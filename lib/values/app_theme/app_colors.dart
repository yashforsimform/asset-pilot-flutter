import 'package:flutter/material.dart';

/// Design-system colors, extracted from the AssetPilot mockup.
///
/// Never hardcode colors in widgets — reference these (or, preferably, the
/// [ThemeData]/[ColorScheme] derived from them in `app_theme.dart`).
abstract final class AppColors {
  // Brand / primary
  static const Color primary = Color(0xFF6C4CE0);
  static const Color primaryDark = Color(0xFF4B2FB0);
  static const Color primaryDeep = Color(0xFF20143F); // headings, admin nav bg
  static const Color primaryAccent = Color(0xFF9F86F0); // on dark surfaces

  // Gradient stops used on buttons/headers
  static const Color gradientStart = Color(0xFF7A5AE6);
  static const Color gradientEnd = Color(0xFF6338C9);

  // Surfaces / backgrounds
  static const Color scaffoldLight = Color(0xFFF7F5FD);
  static const Color scaffoldAlt = Color(0xFFF1EEF9);
  static const Color adminCanvas = Color(0xFFF4F2FA);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceMuted = Color(0xFFEEE9FB);
  static const Color deviceDark = Color(0xFF15102B); // phone bezel / scanner bg

  // Borders / dividers
  static const Color border = Color(0xFFD8D0EE);
  static const Color borderSubtle = Color(0xFFE4DFF2);
  static const Color divider = Color(0xFFF0ECF8);

  // Text
  static const Color textPrimary = Color(0xFF20143F);
  static const Color textSecondary = Color(0xFF6B6480);
  static const Color textTertiary = Color(0xFF8A83A3);
  static const Color textHint = Color(0xFFB0A9C4);
  static const Color textOnDarkMuted = Color(0xFFD9CEFB);

  // Status — foreground / background pairs
  static const Color successFg = Color(0xFF1F9D6B);
  static const Color successBg = Color(0xFFE1F4EC);

  static const Color warningFg = Color(0xFFB8791A);
  static const Color warningBg = Color(0xFFFBEFD6);

  static const Color errorFg = Color(0xFFD64533);
  static const Color errorBg = Color(0xFFF9E4DF);
  static const Color errorAccent = Color(0xFFF26241);

  static const Color infoFg = Color(0xFF2F6FE0);
  static const Color infoBg = Color(0xFFE4EDFC);

  static const Color neutralFg = Color(0xFF7A7391);
  static const Color neutralBg = Color(0xFFEDE9F6);
}
