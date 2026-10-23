import 'dart:math' as math;

import 'package:deleivery_app/screens/location/locationstore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:deleivery_app/home/homescreen.dart';

// =============================================================================

const Color kBrandRed = Color(0xFFC1291C);

// =============================================================================
// DEFAULT LOCATION
// =============================================================================

// Swabi
const LatLng defaultLocation = LatLng(34.1200, 72.4700);

// =============================================================================
// LOCATION STORAGE KEYS  (kept so other files that import them still work;
// the values live in LocationStore)
// =============================================================================

const String kSavedLatitude = LocationStore.latKey;
const String kSavedLongitude = LocationStore.lngKey;
const String kSavedAddress = LocationStore.addressKey;
const String kLocationSaved = LocationStore.savedFlagKey;

// =============================================================================
// SUPPORTED CITIES
// =============================================================================

const String kSwabiCity = 'Swabi';
const String kMardanCity = 'Mardan';

// =============================================================================
// CITY CENTERS
// =============================================================================

const LatLng swabiCenter = LatLng(34.1200, 72.4700);
const LatLng mardanCenter = LatLng(34.1980, 72.0400);

// =============================================================================
// DELIVERY RADIUS  (locations outside these areas are not accepted)
// =============================================================================

const double swabiDeliveryRadiusKm = 20.0;
const double mardanDeliveryRadiusKm = 20.0;

// =============================================================================
// HAVERSINE DISTANCE
// =============================================================================

double _toRadians(double degrees) => degrees * math.pi / 180.0;

double _distanceInKm(LatLng a, LatLng b) {
  const double earthRadius = 6371.0;

  final double lat1 = _toRadians(a.latitude);
  final double lat2 = _toRadians(b.latitude);
  final double dLat = _toRadians(b.latitude - a.latitude);
  final double dLon = _toRadians(b.longitude - a.longitude);

  final double h =
      math.sin(dLat / 2) * math.sin(dLat / 2) +
      math.cos(lat1) * math.cos(lat2) * math.sin(dLon / 2) * math.sin(dLon / 2);

  return earthRadius * 2 * math.atan2(math.sqrt(h), math.sqrt(1 - h));
}

bool isPointInsideDeliveryArea(LatLng point) {
  return _distanceInKm(point, swabiCenter) <= swabiDeliveryRadiusKm ||
      _distanceInKm(point, mardanCenter) <= mardanDeliveryRadiusKm;
}

String? getSupportedCity(LatLng point) {
  final double distanceFromSwabi = _distanceInKm(point, swabiCenter);
  final double distanceFromMardan = _distanceInKm(point, mardanCenter);

  if (distanceFromSwabi <= swabiDeliveryRadiusKm &&
      distanceFromSwabi <= distanceFromMardan) {
    return kSwabiCity;
  }

  if (distanceFromMardan <= mardanDeliveryRadiusKm) {
    return kMardanCity;
  }

  return null;
}

// =============================================================================
// DELIVERY ADDRESS SCREEN
// =============================================================================

class DeliveryAddressScreen extends StatefulWidget {
  const DeliveryAddressScreen({super.key});

  @override
  State<DeliveryAddressScreen> createState() => _DeliveryAddressScreenState();
}

class _DeliveryAddressScreenState extends State<DeliveryAddressScreen> {
  // ===========================================================================
  // MAP / GEOCODING
  // ===========================================================================

  final Geocoding _geocoding = Geocoding();

  GoogleMapController? _mapController;

  // ===========================================================================
  // STATE
  // ===========================================================================

  // Always the EXACT point under the pin (= the map camera target).
  LatLng _selectedLocation = defaultLocation;

  double _initialZoom = 14;

  bool _isInsideDeliveryZone = true;
  bool _isSaving = false;
  bool _isLoadingSavedLocation = true;
  bool _isLocating = false;

  MapType _mapType = MapType.normal;

  String _selectedAddress = 'Swabi';

  String? selectedCity = kSwabiCity;

  // Ignores out-of-date reverse-geocoding answers when the user keeps moving.
  int _geoRequestId = 0;

  // ===========================================================================
  // INLINE SEARCH STATE
  // ===========================================================================

  bool _isSearching = false;
  bool _isSearchingLocation = false;

  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocusNode = FocusNode();

  // ===========================================================================
  // INIT
  // ===========================================================================

  @override
  void initState() {
    super.initState();
    _loadSavedLocation();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    _mapController?.dispose();
    super.dispose();
  }

  // ===========================================================================
  // LOAD SAVED LOCATION
  // ===========================================================================
  //
  // The map is built AFTER this finishes and starts exactly on the saved
  // point, so the pin and the stored lat/lng can never disagree.
  // ===========================================================================

  Future<void> _loadSavedLocation() async {
    try {
      final SavedLocation? saved = await LocationStore.load();

      if (saved != null) {
        _selectedLocation = saved.latLng;
        _isInsideDeliveryZone = isPointInsideDeliveryArea(saved.latLng);
        selectedCity = getSupportedCity(saved.latLng);
        _initialZoom = 16;

        if (saved.address.trim().isNotEmpty) {
          _selectedAddress = saved.address;
        }
      }
    } catch (_) {
      // Keep the default location if saved data cannot be read.
    } finally {
      if (mounted) {
        setState(() => _isLoadingSavedLocation = false);
      }
    }
  }

  // ===========================================================================
  // CAMERA MOVE  (no setState on every frame - only when the zone changes)
  // ===========================================================================

  void _onCameraMove(CameraPosition position) {
    _selectedLocation = position.target;

    final bool inside = isPointInsideDeliveryArea(position.target);
    selectedCity = getSupportedCity(position.target);

    if (inside != _isInsideDeliveryZone && mounted) {
      setState(() => _isInsideDeliveryZone = inside);
    }
  }

  // ===========================================================================
  // CAMERA IDLE - the user stopped: this is the picked spot
  // ===========================================================================

  Future<void> _onCameraIdle() async {
    if (!mounted) return;

    final LatLng location = _selectedLocation;
    final bool inside = isPointInsideDeliveryArea(location);

    setState(() {
      _isInsideDeliveryZone = inside;
      selectedCity = getSupportedCity(location);
    });

    if (!inside) return;

    await _getAddressFromCoordinates(location);
  }

  // ===========================================================================
  // CLEAN ADDRESS  (removes Google Plus Codes like "686M+45X, ")
  // ===========================================================================

  String _cleanAddressPart(String value) {
    String result = value.trim();

    if (result.isEmpty) return '';

    final RegExp plusCodePattern = RegExp(
      r'^[A-Z0-9]{2,8}\+[A-Z0-9]{2,6}\s*,?\s*',
      caseSensitive: false,
    );

    result = result.replaceFirst(plusCodePattern, '').trim();
    result = result.replaceFirst(RegExp(r'^,\s*'), '');

    return result.trim();
  }

  // ===========================================================================
  // REVERSE GEOCODING: coordinates -> readable address
  // ===========================================================================

  Future<void> _getAddressFromCoordinates(LatLng location) async {
    final int requestId = ++_geoRequestId;

    try {
      final List<Placemark> placemarks = await _geocoding
          .placemarkFromCoordinates(location.latitude, location.longitude);

      // A newer request started while this one was running -> drop it.
      if (!mounted || requestId != _geoRequestId) return;
      if (placemarks.isEmpty) return;

      final Placemark place = placemarks.first;

      final String city = _cleanAddressPart((place.locality ?? '').trim());
      final String subLocality = _cleanAddressPart(
        (place.subLocality ?? '').trim(),
      );
      final String street = _cleanAddressPart((place.street ?? '').trim());
      final String area = _cleanAddressPart(
        (place.subAdministrativeArea ?? '').trim(),
      );

      final String? supportedCity = getSupportedCity(location);
      if (supportedCity == null) return;

      final List<String> parts = [];

      if (street.isNotEmpty) parts.add(street);

      if (subLocality.isNotEmpty && !parts.contains(subLocality)) {
        parts.add(subLocality);
      }

      if (city.isNotEmpty && !parts.contains(city)) parts.add(city);

      if (parts.isEmpty && area.isNotEmpty) parts.add(area);

      if (parts.isEmpty) parts.add(supportedCity);

      setState(() {
        _selectedAddress = parts.join(', ');
        selectedCity = supportedCity;
      });
    } catch (_) {
      // If reverse geocoding fails, keep the city name.
      final String? city = getSupportedCity(location);

      if (mounted && requestId == _geoRequestId && city != null) {
        setState(() {
          _selectedAddress = city;
          selectedCity = city;
        });
      }
    }
  }

  // ===========================================================================
  // GO TO MY CURRENT (GPS) LOCATION
  // ===========================================================================

  Future<void> _goToMyLocation() async {
    if (_isLocating) return;

    setState(() => _isLocating = true);

    try {
      final bool serviceOn = await Geolocator.isLocationServiceEnabled();
      if (!serviceOn) {
        _showSnack('Please turn on location services.');
        return;
      }

      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }

      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        _showSnack('Location permission is needed to find you.');
        return;
      }

      final Position position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high,
        ),
      );

      await _mapController?.animateCamera(
        CameraUpdate.newCameraPosition(
          CameraPosition(
            target: LatLng(position.latitude, position.longitude),
            zoom: 17,
          ),
        ),
      );
    } catch (_) {
      _showSnack('Could not get your location. Please try again.');
    } finally {
      if (mounted) setState(() => _isLocating = false);
    }
  }

  // ===========================================================================
  // TOGGLE MAP TYPE
  // ===========================================================================

  void _toggleMapType() {
    setState(() {
      _mapType = _mapType == MapType.normal
          ? MapType.satellite
          : MapType.normal;
    });
  }

  void _showSnack(String message) {
    if (!mounted) return;
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text(message)));
  }

  // ===========================================================================
  // CONFIRM LOCATION  -> saves lat/lng + address, then opens Home
  // (Home checks the zone + restaurants for these coordinates)
  // ===========================================================================

  Future<void> _confirmLocation() async {
    if (!_isInsideDeliveryZone || _isSaving) return;

    setState(() => _isSaving = true);

    try {
      final LatLng exactPoint = _selectedLocation; // the spot under the pin

      // One final address lookup before saving.
      await _getAddressFromCoordinates(exactPoint);

      await LocationStore.save(exactPoint, _selectedAddress);

      if (!mounted) return;

      Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (_) => const HomeScreen()),
        (Route<dynamic> route) => false,
      );
    } catch (_) {
      if (!mounted) return;

      setState(() => _isSaving = false);
      _showSnack('Unable to save location. Please try again.');
    }
  }

  // ===========================================================================
  // OPEN / CLOSE INLINE SEARCH
  // ===========================================================================

  void _openSearch() {
    setState(() => _isSearching = true);

    Future.delayed(
      const Duration(milliseconds: 100),
      () => _searchFocusNode.requestFocus(),
    );
  }

  void _closeSearch() {
    setState(() {
      _isSearching = false;
      _searchController.clear();
    });

    _searchFocusNode.unfocus();
  }

  // ===========================================================================
  // SEARCH: typed text -> coordinates, prefers results inside Swabi / Mardan
  // ===========================================================================

  Future<Location?> _findSearchResult(String query) async {
    final List<String> attempts = [
      '$query, Swabi, Pakistan',
      '$query, Mardan, Pakistan',
      query,
    ];

    Location? firstFound;

    for (final String text in attempts) {
      try {
        final List<Location> results = await _geocoding.locationFromAddress(
          text,
        );

        for (final Location result in results) {
          firstFound ??= result;

          if (isPointInsideDeliveryArea(
            LatLng(result.latitude, result.longitude),
          )) {
            return result;
          }
        }
      } catch (_) {
        // Try the next query.
      }
    }

    return firstFound;
  }

  Future<void> _onSearchSubmitted(String value) async {
    final String query = value.trim();

    if (query.isEmpty || _isSearchingLocation) return;

    setState(() => _isSearchingLocation = true);

    try {
      final Location? result = await _findSearchResult(query);

      if (result == null) {
        _showSnack('Location not found. Try a different search.');
        return;
      }

      await _moveToSearchResult(result);

      _closeSearch();
    } catch (_) {
      _showSnack('Could not search that location. Check your connection.');
    } finally {
      if (mounted) setState(() => _isSearchingLocation = false);
    }
  }

  Future<void> _moveToSearchResult(Location result) async {
    final LatLng target = LatLng(result.latitude, result.longitude);

    if (!mounted) return;

    setState(() {
      _selectedLocation = target;
      _isInsideDeliveryZone = isPointInsideDeliveryArea(target);
      selectedCity = getSupportedCity(target);
    });

    await _mapController?.animateCamera(
      CameraUpdate.newCameraPosition(CameraPosition(target: target, zoom: 16)),
    );

    await _getAddressFromCoordinates(target);
  }

  // ===========================================================================
  // BUILD
  // ===========================================================================

  @override
  Widget build(BuildContext context) {
    if (_isLoadingSavedLocation) {
      return const Scaffold(
        backgroundColor: Colors.white,
        body: Center(child: CircularProgressIndicator(color: kBrandRed)),
      );
    }

    final EdgeInsets padding = MediaQuery.of(context).padding;

    final double headerHeight = 68.h;
    final double buttonHeight = 54.h;
    final double pinSize = 52.r;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // ===================================================================
          // GOOGLE MAP  (starts exactly on the saved / default point)
          // ===================================================================
          Positioned.fill(
            child: GoogleMap(
              mapType: _mapType,
              initialCameraPosition: CameraPosition(
                target: _selectedLocation,
                zoom: _initialZoom,
              ),
              onMapCreated: (GoogleMapController controller) {
                _mapController = controller;
              },
              onCameraMove: _onCameraMove,
              onCameraIdle: _onCameraIdle,
              myLocationEnabled: false,
              myLocationButtonEnabled: false,
              zoomControlsEnabled: false,
              compassEnabled: false,
              mapToolbarEnabled: false,
              rotateGesturesEnabled: true,
              scrollGesturesEnabled: true,
              zoomGesturesEnabled: true,
              tiltGesturesEnabled: false,
            ),
          ),

          // ===================================================================
          // TOP HEADER
          // ===================================================================
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(top: padding.top),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: headerHeight,
                    child: Row(
                      children: [
                        SizedBox(width: 14.w),

                        // Close button becomes a back arrow while searching.
                        _CircleButton(
                          icon: _isSearching ? Icons.arrow_back : Icons.close,
                          onTap: () {
                            if (_isSearching) {
                              _closeSearch();
                            } else {
                              Navigator.pop(context);
                            }
                          },
                        ),

                        if (!_isSearching) ...[
                          Expanded(
                            child: Center(
                              child: Text(
                                'Delivery Address',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF202124),
                                ),
                              ),
                            ),
                          ),

                          _CircleButton(icon: Icons.search, onTap: _openSearch),

                          SizedBox(width: 14.w),
                        ] else
                          const Spacer(),
                      ],
                    ),
                  ),

                  // ---------------------------------------------------------
                  // INLINE SEARCH FIELD
                  // ---------------------------------------------------------
                  if (_isSearching)
                    Padding(
                      padding: EdgeInsets.fromLTRB(16.w, 10.h, 16.w, 14.h),
                      child: TextField(
                        controller: _searchController,
                        focusNode: _searchFocusNode,
                        textInputAction: TextInputAction.search,
                        style: TextStyle(fontSize: 14.sp),
                        decoration: InputDecoration(
                          hintText: 'Search for Swabi or Mardan location',
                          hintStyle: TextStyle(fontSize: 14.sp),
                          prefixIcon: Icon(Icons.search, size: 20.r),
                          suffixIcon: _isSearchingLocation
                              ? Padding(
                                  padding: EdgeInsets.all(12.r),
                                  child: SizedBox(
                                    width: 16.r,
                                    height: 16.r,
                                    child: const CircularProgressIndicator(
                                      strokeWidth: 2,
                                    ),
                                  ),
                                )
                              : null,
                          filled: true,
                          fillColor: const Color(0xFFF2F2F2),
                          contentPadding: EdgeInsets.zero,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(14.r),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        onSubmitted: _onSearchSubmitted,
                      ),
                    ),
                ],
              ),
            ),
          ),

          // ===================================================================
          // CENTER PIN
          // ===================================================================
          //
          // The pin stays fixed on screen while the map moves under it.
          // The Material "location_pin" glyph has its tip 10/24 of the icon
          // size BELOW the icon's center, so we lift the icon by exactly that
          // amount. Now the tip sits on the camera target = the saved lat/lng.
          // ===================================================================
          IgnorePointer(
            child: Center(
              child: Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  // Small dot on the exact picked point.
                  Container(
                    width: 6.r,
                    height: 6.r,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black26,
                    ),
                  ),
                  Transform.translate(
                    offset: Offset(0, -pinSize * 10 / 24),
                    child: Icon(
                      Icons.location_pin,
                      size: pinSize,
                      color: _isInsideDeliveryZone
                          ? const Color(0xFFFF5A1F)
                          : Colors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ===================================================================
          // OUTSIDE DELIVERY AREA
          // ===================================================================
          if (!_isInsideDeliveryZone)
            Positioned(
              left: 25.w,
              right: 25.w,
              bottom: 160.h + padding.bottom + buttonHeight,
              child: Center(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 18.w,
                    vertical: 13.h,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.black87,
                    borderRadius: BorderRadius.circular(18.r),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.20),
                        blurRadius: 10.r,
                        offset: Offset(0, 4.h),
                      ),
                    ],
                  ),
                  child: Text(
                    'We currently deliver only in Swabi and Mardan.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),

          // ===================================================================
          // RIGHT SIDE BUTTONS
          // ===================================================================
          Positioned(
            right: 14.w,
            bottom: 145.h + padding.bottom + buttonHeight,
            child: Column(
              children: [
                // Jumps to the phone's real GPS position.
                _MapButton(
                  icon: Icons.my_location,
                  loading: _isLocating,
                  onTap: _goToMyLocation,
                ),

                SizedBox(height: 10.h),

                _MapButton(icon: Icons.layers_outlined, onTap: _toggleMapType),
              ],
            ),
          ),

          // ===================================================================
          // SELECTED ADDRESS PREVIEW
          // ===================================================================
          Positioned(
            left: 16.w,
            right: 16.w,
            bottom: 62.h + padding.bottom + buttonHeight,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 10.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(14.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.12),
                    blurRadius: 12.r,
                    offset: Offset(0, 3.h),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.location_on, color: kBrandRed, size: 21.r),

                  SizedBox(width: 9.w),

                  Expanded(
                    child: Text(
                      _selectedAddress,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xFF202124),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // ===================================================================
          // BOTTOM PANEL
          // ===================================================================
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.white,
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                top: 14.h,
                bottom: 12.h + padding.bottom,
              ),
              child: SizedBox(
                height: buttonHeight,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: _isInsideDeliveryZone && !_isSaving
                      ? _confirmLocation
                      : null,
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: _isInsideDeliveryZone
                        ? kBrandRed
                        : const Color(0xFFE9E9E9),
                    disabledBackgroundColor: const Color(0xFFE9E9E9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                    ),
                  ),
                  child: _isSaving
                      ? SizedBox(
                          width: 22.r,
                          height: 22.r,
                          child: const CircularProgressIndicator(
                            strokeWidth: 2.5,
                            color: Colors.white,
                          ),
                        )
                      : Text(
                          _isInsideDeliveryZone
                              ? 'Confirm Location'
                              : "Sorry, we don't deliver here",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: _isInsideDeliveryZone
                                ? Colors.white
                                : Colors.grey.shade600,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// CIRCLE BUTTON
// =============================================================================

class _CircleButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _CircleButton({required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      elevation: 2.5,
      shadowColor: Colors.black.withOpacity(0.20),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: SizedBox(
          width: 44.r,
          height: 44.r,
          child: Icon(icon, size: 23.r, color: Colors.black87),
        ),
      ),
    );
  }
}

// =============================================================================
// MAP BUTTON
// =============================================================================

class _MapButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool loading;

  const _MapButton({
    required this.icon,
    required this.onTap,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      shape: const CircleBorder(),
      elevation: 3,
      shadowColor: Colors.black.withOpacity(0.20),
      child: InkWell(
        onTap: onTap,
        customBorder: const CircleBorder(),
        child: SizedBox(
          width: 48.r,
          height: 48.r,
          child: loading
              ? Padding(
                  padding: EdgeInsets.all(14.r),
                  child: const CircularProgressIndicator(strokeWidth: 2.5),
                )
              : Icon(icon, size: 23.r, color: Colors.black87),
        ),
      ),
    );
  }
}
