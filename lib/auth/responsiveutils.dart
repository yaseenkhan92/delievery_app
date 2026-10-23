import 'package:flutter/material.dart';

/// Sizing is now handled by the flutter_screenutil package
/// (.w  .h  .r  .sp). What stays here is the system-font clamp, so very
/// large accessibility fonts don't break the layout.
///
/// Usage: MediaQuery(data: ResponsiveUtils.clampedMediaQuery(context), child: ...)
class ResponsiveUtils {
  ResponsiveUtils._(); // static-only class

  static MediaQueryData clampedMediaQuery(
    BuildContext context, {
    double minTextScale = 0.8,
    double maxTextScale = 1.15,
  }) {
    final TextScaler textScaler = MediaQuery.textScalerOf(
      context,
    ).clamp(minScaleFactor: minTextScale, maxScaleFactor: maxTextScale);
    return MediaQuery.of(context).copyWith(textScaler: textScaler);
  }
}
