import 'package:flutter/material.dart';

import 'app_colors.dart';

/// Typography tokens: Poppins for headings/emphasis, DM Sans for body.
///
/// Font files are added under assets/fonts during UI implementation; the
/// families are declared in pubspec.yaml so these styles resolve.
abstract final class AppTextStyles {
  static const String headingFamily = 'Poppins';
  static const String bodyFamily = 'DM Sans';

  // Headings (Poppins)
  static const TextStyle h1 = TextStyle(
    fontFamily: headingFamily,
    fontWeight: FontWeight.w700,
    fontSize: 26,
    height: 1.1,
    color: AppColors.textPrimary,
  );

  static const TextStyle h2 = TextStyle(
    fontFamily: headingFamily,
    fontWeight: FontWeight.w700,
    fontSize: 20,
    height: 1.2,
    color: AppColors.textPrimary,
  );

  static const TextStyle h3 = TextStyle(
    fontFamily: headingFamily,
    fontWeight: FontWeight.w700,
    fontSize: 14,
    color: AppColors.textPrimary,
  );

  // Body (DM Sans)
  static const TextStyle bodyLarge = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    color: AppColors.textPrimary,
  );

  static const TextStyle bodyMedium = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w400,
    fontSize: 13,
    height: 1.5,
    color: AppColors.textSecondary,
  );

  static const TextStyle bodySmall = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w400,
    fontSize: 11,
    color: AppColors.textTertiary,
  );

  static const TextStyle label = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w600,
    fontSize: 12,
    color: AppColors.textSecondary,
  );

  static const TextStyle button = TextStyle(
    fontFamily: bodyFamily,
    fontWeight: FontWeight.w600,
    fontSize: 15,
    color: Colors.white,
  );
}
