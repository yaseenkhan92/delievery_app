import 'package:flutter/material.dart';

/// All app colors in one place.
/// Usage: AppColors.brandRed
class AppColors {
  AppColors._(); // static-only class: prevents AppColors()

  // Brand
  static const Color brandRed = Color(0xFFC1291C); // RGB(193, 41, 28) / #C1291C
  static const Color brandRedSheet = Color(0xFFD03223);

  // Neutrals
  static const Color textDark = Colors.black87;
  static const Color hintGrey = Color(0xFF9E9E9E);
  static const Color iconGrey = Color(0xFF757575);
  static const Color fieldBorder = Color(0xFFE9DEDD);
  static const Color divider = Color(0xFFE0E0E0);

  // Social
  static const Color facebookBlue = Color(0xFF1877F2);
}
