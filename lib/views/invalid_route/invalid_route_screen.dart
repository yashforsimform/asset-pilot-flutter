import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../values/app_theme/app_colors.dart';
import '../../values/app_theme/app_text_styles.dart';

/// Fallback screen for unknown/invalid routes (404).
class InvalidRouteScreen extends StatelessWidget {
  const InvalidRouteScreen({super.key, this.path});

  final String? path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              size: 48,
              color: AppColors.errorFg,
            ),
            const Gap(12),
            const Text('Page not found', style: AppTextStyles.h2),
            if (path != null) ...[
              const Gap(6),
              Text(path!, style: AppTextStyles.bodySmall),
            ],
          ],
        ),
      ),
    );
  }
}
