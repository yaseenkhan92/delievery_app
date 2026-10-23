import 'package:deleivery_app/api/baseapi.dart';
import 'package:deleivery_app/api/resturant_Api.dart';
import 'package:deleivery_app/api/zoneapi.dart';
import 'package:deleivery_app/screens/location/deleiveryAddressScreen.dart';
import 'package:deleivery_app/screens/location/locationstore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// =============================================================================
// SERVICE AVAILABILITY  (does the API work once, the UI just listens)
// =============================================================================

enum ServiceStatus { loading, available, unavailable, error }

class ServiceAvailability {
  ServiceAvailability._();

  static final ServiceAvailability instance = ServiceAvailability._();

  final ValueNotifier<ServiceStatus> status = ValueNotifier<ServiceStatus>(
    ServiceStatus.loading,
  );

  String message = '';

  /// Restaurants returned by GET /consumer/restaurants/all for the saved
  /// location (empty until the check finishes). Use it to build real cards.
  final ValueNotifier<List<Map<String, dynamic>>> restaurants =
      ValueNotifier<List<Map<String, dynamic>>>(<Map<String, dynamic>>[]);

  int _runId = 0; // ignores answers from an older, slower check

  /// Reads the saved lat/lng, then calls
  ///   1) GET /consumer/config/zone-id
  ///   2) GET /consumer/restaurants/all?zone_id=..
  /// Call it when Home opens (app open + after the location changes).
  Future<void> check() async {
    final int runId = ++_runId;

    void finish(ServiceStatus s, [String m = '']) {
      if (runId != _runId) return;
      message = m;
      status.value = s;
    }

    status.value = ServiceStatus.loading;

    try {
      final SavedLocation? location = await LocationStore.load();

      if (location == null) {
        debugPrint('ServiceAvailability: no saved location');
        finish(ServiceStatus.unavailable);
        return;
      }

      final double lat = location.latLng.latitude;
      final double lng = location.latLng.longitude;

      // 1) Which zone(s) cover this spot?
      final List<int> zoneIds = await ZoneApi.resolveZoneIds(
        lat: lat,
        lng: lng,
      );
      await LocationStore.saveZoneIds(zoneIds);

      if (kDebugMode) {
        debugPrint('ServiceAvailability: lat=$lat lng=$lng zones=$zoneIds');
      }

      if (zoneIds.isEmpty) {
        restaurants.value = <Map<String, dynamic>>[];
        finish(ServiceStatus.unavailable);
        return;
      }

      // 2) Ask for ALL restaurants that accept these zone ids.
      final List<Map<String, dynamic>>? found = await RestaurantApi.fetchAll(
        zoneIds: zoneIds,
      );

      if (found == null) {
        // The server answered but the list was not recognised: don't block.
        finish(ServiceStatus.available);
        return;
      }

      restaurants.value = found;

      if (kDebugMode) {
        debugPrint('ServiceAvailability: restaurants=${found.length}');
      }

      finish(
        found.isEmpty ? ServiceStatus.unavailable : ServiceStatus.available,
      );
    } on ApiException catch (e) {
      finish(ServiceStatus.error, e.message);
    } catch (_) {
      finish(ServiceStatus.error, 'Something went wrong. Please try again.');
    }
  }
}

// =============================================================================
// SERVICE GATE
// =============================================================================
//
//   ServiceGate(child: yourHomeContent)
//
//   available   -> shows [child]
//   unavailable -> "Service unavailable in your area" + Change Location
//   error       -> message + Retry
//   loading     -> spinner
//
// [placeholderHeight]: use it when the gate sits inside a scroll view
// (unbounded height) so the spinner / messages get some room.
// =============================================================================

class ServiceGate extends StatelessWidget {
  final Widget child;
  final double? placeholderHeight;

  const ServiceGate({super.key, required this.child, this.placeholderHeight});

  Widget _wrap(Widget w) {
    if (placeholderHeight == null) return w;
    return SizedBox(height: placeholderHeight, child: w);
  }

  @override
  Widget build(BuildContext context) {
    final ServiceAvailability service = ServiceAvailability.instance;

    return ValueListenableBuilder<ServiceStatus>(
      valueListenable: service.status,
      builder: (context, status, _) {
        switch (status) {
          case ServiceStatus.loading:
            return _wrap(
              const Center(child: CircularProgressIndicator(color: kBrandRed)),
            );
          case ServiceStatus.available:
            return child;
          case ServiceStatus.unavailable:
            return _wrap(const ServiceUnavailableView());
          case ServiceStatus.error:
            return _wrap(
              _GateErrorView(message: service.message, onRetry: service.check),
            );
        }
      },
    );
  }
}

// =============================================================================
// SERVICE UNAVAILABLE
// =============================================================================

class ServiceUnavailableView extends StatelessWidget {
  const ServiceUnavailableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 32.w),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 96.r,
                height: 96.r,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kBrandRed.withOpacity(0.08),
                ),
                child: Icon(
                  Icons.storefront_outlined,
                  color: kBrandRed,
                  size: 46.r,
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Service unavailable in your area',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF202124),
                ),
              ),
              SizedBox(height: 8.h),
              Text(
                "We don't have any restaurants delivering to this location yet. "
                'Try choosing a different location.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.grey.shade600,
                  height: 1.4,
                ),
              ),
              SizedBox(height: 22.h),
              SizedBox(
                height: 46.h,
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const DeliveryAddressScreen(),
                      ),
                    );
                  },
                  icon: Icon(Icons.location_on_outlined, size: 18.r),
                  label: Text(
                    'Change Location',
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: kBrandRed,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// =============================================================================
// ERROR + RETRY
// =============================================================================

class _GateErrorView extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const _GateErrorView({required this.message, required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(Icons.cloud_off_rounded, color: kBrandRed, size: 48.r),
            SizedBox(height: 12.h),
            Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.sp, color: const Color(0xFF202124)),
            ),
            SizedBox(height: 16.h),
            ElevatedButton(
              onPressed: onRetry,
              style: ElevatedButton.styleFrom(
                backgroundColor: kBrandRed,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.r),
                ),
              ),
              child: const Text('Retry', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
