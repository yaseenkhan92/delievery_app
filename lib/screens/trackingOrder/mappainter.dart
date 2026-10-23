import 'dart:ui';

import 'package:deleivery_app/screens/trackingOrder/color.dart';
import 'package:flutter/material.dart';

// =============================================================================
// MAP GRID PAINTER
// =============================================================================
// Lightweight "fake map" texture: soft grid lines + a couple of green
// "park" blocks, so the On the Way map card has some visual texture without
// needing a real maps SDK or image asset.
// =============================================================================

class MapGridPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Paint gridPaint = Paint()
      ..color = Colors.black.withOpacity(0.045)
      ..strokeWidth = 1;

    const double step = 34;

    for (double x = 0; x < size.width; x += step) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), gridPaint);
    }
    for (double y = 0; y < size.height; y += step) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), gridPaint);
    }

    final Paint parkPaint = Paint()..color = Colors.green.withOpacity(0.10);
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          size.width * 0.05,
          size.height * 0.55,
          size.width * 0.28,
          size.height * 0.18,
        ),
        const Radius.circular(10),
      ),
      parkPaint,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          size.width * 0.62,
          size.height * 0.08,
          size.width * 0.3,
          size.height * 0.14,
        ),
        const Radius.circular(10),
      ),
      parkPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

// =============================================================================
// ROUTE PAINTER
// =============================================================================
// Draws the dashed red route from the restaurant pin (bottom-left) through
// the rider's current position (middle) up to the home pin (top-right),
// matching the zig-zag street-following line in the screenshot.
// =============================================================================

class RoutePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Path path = Path()
      ..moveTo(size.width * 0.14, size.height * 0.80)
      ..lineTo(size.width * 0.40, size.height * 0.80)
      ..lineTo(size.width * 0.40, size.height * 0.63)
      ..lineTo(size.width * 0.50, size.height * 0.53)
      ..lineTo(size.width * 0.62, size.height * 0.53)
      ..lineTo(size.width * 0.62, size.height * 0.30)
      ..lineTo(size.width * 0.80, size.height * 0.30)
      ..lineTo(size.width * 0.80, size.height * 0.12);

    final Paint linePaint = Paint()
      ..color = kTrackRed
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    _drawDashedPath(canvas, path, linePaint);
  }

  void _drawDashedPath(Canvas canvas, Path path, Paint paint) {
    const double dashWidth = 8;
    const double dashSpace = 6;
    for (final PathMetric metric in path.computeMetrics()) {
      double distance = 0;
      bool draw = true;
      while (distance < metric.length) {
        final double next = distance + (draw ? dashWidth : dashSpace);
        if (draw) {
          canvas.drawPath(
            metric.extractPath(distance, next.clamp(0, metric.length)),
            paint,
          );
        }
        distance = next;
        draw = !draw;
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
