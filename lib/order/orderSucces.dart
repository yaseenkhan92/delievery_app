import 'dart:math';

import 'package:flutter/material.dart';

const Color kBrandRed = Color(0xFFC1291C);
const Color kBrandRedLight = Color(0xFFE0362A);
const Color kBrandRedDark = Color(0xFF8E1C12);

class OrderSuccessScreen extends StatelessWidget {
  final String orderId;
  final String estimatedTime;
  final String addressLabel;
  final String address;

  const OrderSuccessScreen({
    super.key,
    this.orderId = '#SG12345678',
    this.estimatedTime = '25–30 min',
    this.addressLabel = 'Home',
    this.address = '123 Park Street, San Francisco, CA 94107',
  });

  @override
  Widget build(BuildContext context) {
    final double rawScale = MediaQuery.of(context).size.width / 360.0;
    final double scale = rawScale.clamp(0.85, 1.35);

    final textScaler = MediaQuery.textScalerOf(
      context,
    ).clamp(minScaleFactor: 0.8, maxScaleFactor: 1.2);

    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaler: textScaler),
      child: Scaffold(
        backgroundColor: kBrandRed,
        body: Stack(
          children: [
            // ===============================================================
            // 1. FULL-SCREEN GRADIENT
            // ===============================================================
            Positioned.fill(
              child: Container(
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    center: Alignment(0.0, -0.5),
                    radius: 1.3,
                    colors: [kBrandRedLight, kBrandRed, kBrandRedDark],
                    stops: [0.0, 0.5, 1.0],
                  ),
                ),
              ),
            ),

            // ===============================================================
            // 2. CONFETTI
            // ===============================================================
            Positioned.fill(
              child: IgnorePointer(
                child: CustomPaint(painter: _ConfettiPainter()),
              ),
            ),

            // ===============================================================
            // 3. FOREGROUND CONTENT
            // ===============================================================
            Column(
              children: [
                // -----------------------------------------------------------
                // TOP CONTENT — bounded with Flexible instead of sizing
                // purely from its own content. On a short screen (or with
                // large accessibility text) this stops it from squeezing
                // the white card below it into negative space; the image
                // inside adapts to whatever height it's actually given.
                // -----------------------------------------------------------
                Flexible(flex: 4, child: _TopContent(scale: scale)),

                // -----------------------------------------------------------
                // WHITE CARD — Expanded, so it always gets a bounded,
                // guaranteed height. Content inside scrolls if it ever
                // needs more room than that (long address, big font
                // scale, tiny screen) instead of overflowing.
                // -----------------------------------------------------------
                Expanded(
                  flex: 6,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40 * scale),
                        topRight: Radius.circular(40 * scale),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20 * scale,
                        ),
                      ],
                    ),
                    child: SafeArea(
                      top: false,
                      child: SingleChildScrollView(
                        physics: const ClampingScrollPhysics(),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(
                            16 * scale,
                            18 * scale,
                            16 * scale,
                            12 * scale,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              _InfoCard(
                                icon: Icons.receipt_long_rounded,
                                iconBgColor: const Color(0xFFFDE8E8),
                                iconColor: kBrandRed,
                                label: 'Order ID',
                                value: orderId,
                                scale: scale,
                              ),

                              SizedBox(height: 8 * scale),

                              _InfoCard(
                                icon: Icons.access_time_rounded,
                                iconBgColor: const Color(0xFFE8F5E9),
                                iconColor: Colors.green.shade600,
                                label: 'Estimated delivery',
                                value: estimatedTime,
                                scale: scale,
                              ),

                              SizedBox(height: 8 * scale),

                              _InfoCard(
                                icon: Icons.location_on_rounded,
                                iconBgColor: const Color(0xFFFDE8E8),
                                iconColor: kBrandRed,
                                label: 'Delivering to',
                                value: addressLabel,
                                subtitle: address,
                                scale: scale,
                              ),

                              SizedBox(height: 14 * scale),

                              _ActionButton(
                                label: 'Track Order',
                                icon: Icons.location_on_outlined,
                                isPrimary: true,
                                scale: scale,
                                onTap: () {},
                              ),

                              SizedBox(height: 10 * scale),

                              _ActionButton(
                                label: 'Back to Home',
                                icon: Icons.home_outlined,
                                isPrimary: false,
                                scale: scale,
                                onTap: () {
                                  Navigator.of(
                                    context,
                                  ).popUntil((route) => route.isFirst);
                                },
                              ),

                              SizedBox(height: 12 * scale),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Need help?',
                                    style: TextStyle(
                                      fontSize: 13 * scale,
                                      color: Colors.grey.shade600,
                                    ),
                                  ),
                                  SizedBox(width: 6 * scale),
                                  Icon(
                                    Icons.headset_mic_outlined,
                                    size: 16 * scale,
                                    color: Colors.grey.shade600,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// TOP CONTENT — back button, image, title/subtitle.
// No background of its own — the full-screen gradient behind it shows
// through. Now sits inside a Flexible, so it gets a definite bounded box —
// the image inside measures and fits itself into whatever's left after the
// back button and text take their share, instead of assuming a screen-height
// percentage that may not hold on every device.
// =============================================================================

class _TopContent extends StatelessWidget {
  final double scale;
  const _TopContent({required this.scale});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // -------------------------------------------------------------
          // BACK BUTTON
          // -------------------------------------------------------------
          Padding(
            padding: EdgeInsets.fromLTRB(16 * scale, 0, 16 * scale, 0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).maybePop(),
                  child: Container(
                    width: 42 * scale,
                    height: 42 * scale,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white.withOpacity(0.15),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.3),
                        width: 1 * scale,
                      ),
                    ),
                    child: Icon(
                      Icons.arrow_back_rounded,
                      color: Colors.white,
                      size: 24 * scale,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // -------------------------------------------------------------
          // 3D CHARACTER IMAGE
          // Expanded (fills whatever's left of _TopContent's own bounded
          // box after back button + text) + LayoutBuilder to read that
          // real box, + FittedBox(contain) to fit the image inside it
          // without stretching or cropping — same technique as the
          // login screen's man illustration, so it adapts to any
          // screen's real aspect ratio instead of guessing a fixed one.
          // -------------------------------------------------------------
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24 * scale),
              child: LayoutBuilder(
                builder: (context, constraints) {
                  final double boxWidth = constraints.maxWidth;
                  final double boxHeight = constraints.maxHeight > 0
                      ? constraints.maxHeight
                      : boxWidth;

                  return SizedBox(
                    width: boxWidth,
                    height: boxHeight,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      alignment: Alignment.bottomCenter,
                      child: Image.asset(
                        'assets/delivery_success.png',
                        errorBuilder: (context, error, stackTrace) => SizedBox(
                          width: boxWidth * 0.5,
                          height: boxWidth * 0.5,
                          child: Icon(
                            Icons.delivery_dining_rounded,
                            color: Colors.white.withOpacity(0.6),
                            size: boxWidth * 0.4,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          // -------------------------------------------------------------
          // TITLE & SUBTITLE
          // -------------------------------------------------------------
          Padding(
            padding: EdgeInsets.fromLTRB(
              24 * scale,
              4 * scale,
              24 * scale,
              16 * scale,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Yay! Order Placed\nSuccessfully',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20 * scale,
                    fontWeight: FontWeight.w800,
                    height: 1.1,
                  ),
                ),
                SizedBox(height: 7 * scale),
                Text(
                  'Your food is being prepared and will be delivered soon.',
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.85),
                    fontSize: 12 * scale,
                    height: 1.4,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// INFO CARD
// =============================================================================

class _InfoCard extends StatelessWidget {
  final IconData icon;
  final Color iconBgColor;
  final Color iconColor;
  final String label;
  final String value;
  final String? subtitle;
  final double scale;

  const _InfoCard({
    required this.icon,
    required this.iconBgColor,
    required this.iconColor,
    required this.label,
    required this.value,
    this.subtitle,
    required this.scale,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(14 * scale),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(20 * scale),
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 32 * scale,
            height: 32 * scale,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconBgColor,
            ),
            child: Icon(icon, color: iconColor, size: 16 * scale),
          ),
          SizedBox(width: 14 * scale),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 10 * scale,
                    color: Colors.grey.shade600,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 3 * scale),
                Text(
                  value,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 13 * scale,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87,
                  ),
                ),
                if (subtitle != null) ...[
                  SizedBox(height: 3 * scale),
                  Text(
                    subtitle!,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 12 * scale,
                      color: Colors.grey.shade600,
                      height: 1.3,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// =============================================================================
// ACTION BUTTON
// =============================================================================

class _ActionButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isPrimary;
  final double scale;
  final VoidCallback onTap;

  const _ActionButton({
    required this.label,
    required this.icon,
    required this.isPrimary,
    required this.scale,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50 * scale,
        decoration: BoxDecoration(
          color: isPrimary ? kBrandRed : Colors.white,
          borderRadius: BorderRadius.circular(28 * scale),
          border: isPrimary
              ? null
              : Border.all(color: kBrandRed, width: 1.5 * scale),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icon,
                  color: isPrimary ? Colors.white : kBrandRed,
                  size: 20 * scale,
                ),
                SizedBox(width: 8 * scale),
                Flexible(
                  child: Text(
                    label,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: isPrimary ? Colors.white : kBrandRed,
                      fontSize: 16 * scale,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            ),
            if (isPrimary)
              Positioned(
                right: 6 * scale,
                child: Container(
                  width: 38 * scale,
                  height: 38 * scale,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.2),
                  ),
                  child: Icon(
                    Icons.arrow_forward_rounded,
                    color: Colors.white,
                    size: 18 * scale,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

// =============================================================================
// CONFETTI PAINTER
// =============================================================================

class _ConfettiPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rand = Random(42);

    final colors = [
      Colors.green.shade400,
      Colors.yellow.shade400,
      Colors.pink.shade300,
      Colors.orange.shade300,
      Colors.lightGreen.shade400,
    ];

    for (int i = 0; i < 30; i++) {
      final dx = rand.nextDouble() * size.width;
      final dy = rand.nextDouble() * size.height;
      final w = 4 + rand.nextDouble() * 6;
      final h = 4 + rand.nextDouble() * 6;
      final rotation = rand.nextDouble() * 3.14;
      final color = colors[rand.nextInt(colors.length)];

      final paint = Paint()..color = color.withOpacity(0.7);

      canvas.save();
      canvas.translate(dx, dy);
      canvas.rotate(rotation);
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromCenter(center: Offset.zero, width: w, height: h),
          Radius.circular(2),
        ),
        paint,
      );
      canvas.restore();
    }

    final starPaint = Paint()..color = Colors.white.withOpacity(0.6);
    for (int i = 0; i < 8; i++) {
      final dx = rand.nextDouble() * size.width;
      final dy = rand.nextDouble() * size.height;
      _drawStar(canvas, Offset(dx, dy), 2 + rand.nextDouble() * 2, starPaint);
    }
  }

  void _drawStar(Canvas canvas, Offset center, double r, Paint paint) {
    final path = Path()
      ..moveTo(center.dx, center.dy - r * 2)
      ..lineTo(center.dx + r * 0.5, center.dy - r * 0.5)
      ..lineTo(center.dx + r * 2, center.dy)
      ..lineTo(center.dx + r * 0.5, center.dy + r * 0.5)
      ..lineTo(center.dx, center.dy + r * 2)
      ..lineTo(center.dx - r * 0.5, center.dy + r * 0.5)
      ..lineTo(center.dx - r * 2, center.dy)
      ..lineTo(center.dx - r * 0.5, center.dy - r * 0.5)
      ..close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
