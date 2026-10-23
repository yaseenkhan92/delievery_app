import 'dart:ui' as ui;

import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// =============================================================================
// LIVE MAP CARD  (real Google Map for the "On the way" page)
// =============================================================================
// Replaces the fake painted map (MapGridPainter / RoutePainter).
//
// - Restaurant, rider and home are real markers (red circles with white icons,
//   drawn in code so they match your brand colour).
// - Route: solid line restaurant -> rider (done), dashed line rider -> home.
// - Camera auto-fits all three points, so it works on every screen size.
// - Pass a new [riderPosition] whenever your backend sends one and the rider
//   marker + route update automatically.
// =============================================================================

class LiveMapCard extends StatefulWidget {
  const LiveMapCard({
    super.key,
    this.restaurantPosition = const LatLng(37.7712, -122.4090),
    this.riderPosition = const LatLng(37.7690, -122.4010),
    this.homePosition = const LatLng(37.7645, -122.3970),
    this.restaurantName = 'Burger House',
    this.riderName = 'Ali',
    this.etaText = '2 min away',
    this.interactive = false,
  });

  final LatLng restaurantPosition;
  final LatLng riderPosition;
  final LatLng homePosition;
  final String restaurantName;
  final String riderName;
  final String etaText;

  /// false = map is fixed (page scrolls smoothly over it).
  /// true  = user can pan / zoom the map (the map captures touch).
  final bool interactive;

  @override
  State<LiveMapCard> createState() => _LiveMapCardState();
}

class _LiveMapCardState extends State<LiveMapCard> {
  GoogleMapController? _controller;

  BitmapDescriptor? _restaurantIcon;
  BitmapDescriptor? _riderIcon;
  BitmapDescriptor? _homeIcon;

  bool _iconsRequested = false;

  // Hides shops / transit so the map stays clean like your design.
  static const String _mapStyle = '''
[
  {"featureType":"poi","stylers":[{"visibility":"off"}]},
  {"featureType":"transit","stylers":[{"visibility":"off"}]}
]
''';

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    if (!_iconsRequested) {
      _iconsRequested = true;
      _loadIcons(MediaQuery.devicePixelRatioOf(context));
    }
  }

  @override
  void didUpdateWidget(covariant LiveMapCard oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.riderPosition != widget.riderPosition) {
      _controller?.animateCamera(CameraUpdate.newLatLng(widget.riderPosition));
    }
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  // ---------------------------------------------------------------------------
  // Custom marker icons (red circle + white icon), drawn with a Canvas
  // ---------------------------------------------------------------------------

  Future<void> _loadIcons(double dpr) async {
    final restaurant = await _buildMarker(Icons.storefront_rounded, dpr);
    final rider = await _buildMarker(
      Icons.sports_motorsports_rounded,
      dpr,
      size: 52,
    );
    final home = await _buildMarker(Icons.home_rounded, dpr);

    if (!mounted) return;

    setState(() {
      _restaurantIcon = restaurant;
      _riderIcon = rider;
      _homeIcon = home;
    });
  }

  Future<BitmapDescriptor> _buildMarker(
    IconData icon,
    double dpr, {
    double size = 42,
  }) async {
    final double s = size * dpr;
    final ui.PictureRecorder recorder = ui.PictureRecorder();
    final Canvas canvas = Canvas(recorder);
    final Offset center = Offset(s / 2, s / 2);

    // soft glow
    canvas.drawCircle(
      center,
      s / 2,
      Paint()..color = kTrackRed.withOpacity(0.25),
    );
    // white ring
    canvas.drawCircle(center, s / 2 - (4 * dpr), Paint()..color = Colors.white);
    // red circle
    canvas.drawCircle(center, s / 2 - (6 * dpr), Paint()..color = kTrackRed);

    // white icon
    final TextPainter tp = TextPainter(textDirection: TextDirection.ltr)
      ..text = TextSpan(
        text: String.fromCharCode(icon.codePoint),
        style: TextStyle(
          fontSize: s * 0.42,
          fontFamily: icon.fontFamily,
          package: icon.fontPackage,
          color: Colors.white,
        ),
      )
      ..layout();

    tp.paint(canvas, center - Offset(tp.width / 2, tp.height / 2));

    final ui.Image image = await recorder.endRecording().toImage(
      s.toInt(),
      s.toInt(),
    );
    final ByteData? bytes = await image.toByteData(
      format: ui.ImageByteFormat.png,
    );

    return BitmapDescriptor.bytes(
      bytes!.buffer.asUint8List(),
      imagePixelRatio: dpr,
    );
  }

  // ---------------------------------------------------------------------------
  // Map data
  // ---------------------------------------------------------------------------

  Set<Marker> get _markers {
    return {
      Marker(
        markerId: const MarkerId('restaurant'),
        position: widget.restaurantPosition,
        icon: _restaurantIcon ?? BitmapDescriptor.defaultMarker,
        anchor: const Offset(0.5, 0.5),
        infoWindow: InfoWindow(
          title: widget.restaurantName,
          snippet: 'Restaurant',
        ),
      ),
      Marker(
        markerId: const MarkerId('rider'),
        position: widget.riderPosition,
        icon: _riderIcon ?? BitmapDescriptor.defaultMarker,
        anchor: const Offset(0.5, 0.5),
        zIndexInt: 2,
      ),
      Marker(
        markerId: const MarkerId('home'),
        position: widget.homePosition,
        icon: _homeIcon ?? BitmapDescriptor.defaultMarker,
        anchor: const Offset(0.5, 0.5),
        infoWindow: const InfoWindow(
          title: 'Home',
          snippet: 'Delivery Address',
        ),
      ),
    };
  }

  Set<Polyline> get _polylines {
    return {
      // part already travelled: solid
      Polyline(
        polylineId: const PolylineId('done'),
        points: [widget.restaurantPosition, widget.riderPosition],
        color: kTrackRed,
        width: 5,
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
      ),
      // part still to go: dashed
      Polyline(
        polylineId: const PolylineId('remaining'),
        points: [widget.riderPosition, widget.homePosition],
        color: kTrackRed,
        width: 5,
        patterns: [PatternItem.dash(18), PatternItem.gap(10)],
        startCap: Cap.roundCap,
        endCap: Cap.roundCap,
      ),
    };
  }

  Future<void> _fitCameraToRoute() async {
    final GoogleMapController? c = _controller;
    if (c == null) return;

    final List<LatLng> pts = [
      widget.restaurantPosition,
      widget.riderPosition,
      widget.homePosition,
    ];

    double minLat = pts.first.latitude, maxLat = pts.first.latitude;
    double minLng = pts.first.longitude, maxLng = pts.first.longitude;

    for (final p in pts) {
      if (p.latitude < minLat) minLat = p.latitude;
      if (p.latitude > maxLat) maxLat = p.latitude;
      if (p.longitude < minLng) minLng = p.longitude;
      if (p.longitude > maxLng) maxLng = p.longitude;
    }

    final LatLngBounds bounds = LatLngBounds(
      southwest: LatLng(minLat, minLng),
      northeast: LatLng(maxLat, maxLng),
    );

    // Map needs a moment to get its size before fitting bounds.
    await Future.delayed(const Duration(milliseconds: 350));

    try {
      await c.animateCamera(CameraUpdate.newLatLngBounds(bounds, 80));
    } catch (_) {
      // ignore: map not laid out yet
    }
  }

  // ---------------------------------------------------------------------------
  // BUILD
  // ---------------------------------------------------------------------------

  @override
  Widget build(BuildContext context) {
    final LatLng mid = LatLng(
      (widget.restaurantPosition.latitude + widget.homePosition.latitude) / 2,
      (widget.restaurantPosition.longitude + widget.homePosition.longitude) / 2,
    );

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      height: 350.h,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFFF1EFEC),
        borderRadius: BorderRadius.circular(22.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.06), blurRadius: 14.r),
        ],
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(target: mid, zoom: 14),
              markers: _markers,
              polylines: _polylines,
              style: _mapStyle,
              onMapCreated: (c) {
                _controller = c;
                _fitCameraToRoute();
              },
              zoomControlsEnabled: false,
              mapToolbarEnabled: false,
              myLocationButtonEnabled: false,
              compassEnabled: false,
              rotateGesturesEnabled: false,
              tiltGesturesEnabled: false,
              scrollGesturesEnabled: widget.interactive,
              zoomGesturesEnabled: widget.interactive,
              gestureRecognizers: widget.interactive
                  ? <Factory<OneSequenceGestureRecognizer>>{
                      Factory<OneSequenceGestureRecognizer>(
                        () => EagerGestureRecognizer(),
                      ),
                    }
                  : const <Factory<OneSequenceGestureRecognizer>>{},
            ),
          ),

          // "Live Tracking" chip (top-left)
          Positioned(
            left: 12.w,
            top: 12.h,
            child: _buildMiniInfoChip(
              icon: Icons.podcasts_rounded,
              title: 'Live Tracking',
              subtitle: 'Your order is on the way!',
              maxWidth: 175.w,
            ),
          ),

          // "Ali is on the way / 2 min away" bubble (bottom-centre)
          Positioned(
            left: 0,
            right: 0,
            bottom: 14.h,
            child: Center(child: _buildEtaBubble()),
          ),
        ],
      ),
    );
  }

  Widget _buildMiniInfoChip({
    required IconData icon,
    required String title,
    required String subtitle,
    required double maxWidth,
  }) {
    return Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.08), blurRadius: 8.r),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: kTrackRed, size: 15.sp),
          SizedBox(width: 6.w),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: kTrackRed,
                    fontSize: 11.5.sp,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Text(
                  subtitle,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 9.5.sp,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEtaBubble() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 9.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14.r),
        boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 10.r),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${widget.riderName} is on the way',
            style: TextStyle(
              color: kTrackText,
              fontSize: 11.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 2.h),
          Text(
            widget.etaText,
            style: TextStyle(
              color: kTrackRed,
              fontSize: 13.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
