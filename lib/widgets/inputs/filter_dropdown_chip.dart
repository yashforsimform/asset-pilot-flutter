import 'package:flutter/material.dart';

import '../../utilities/extensions/context_extensions.dart';

/// Compact filter-dropdown chip for table toolbars, e.g. "Priority: All ▾".
class FilterDropdownChip extends StatelessWidget {
  const FilterDropdownChip({
    super.key,
    required this.label,
    required this.valueLabel,
    required this.onTap,
    this.trailingIcon = Icons.keyboard_arrow_down,
  });

  final String label;
  final String valueLabel;
  final VoidCallback onTap;

  /// Trailing glyph — defaults to a dropdown chevron; pass e.g.
  /// [Icons.calendar_today_outlined] for triggers that open a picker rather
  /// than a menu.
  final IconData trailingIcon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(9),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 9),
        decoration: BoxDecoration(
          color: context.appColors.surface,
          border: Border.all(color: context.appColors.borderSubtle),
          borderRadius: BorderRadius.circular(9),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '$label: $valueLabel',
              style: context.appTextStyles.emphasisMedium.copyWith(
                color: context.appColors.textSecondary,
              ),
            ),
            const SizedBox(width: 7),
            Icon(
              trailingIcon,
              size: 13,
              color: context.appColors.textHint,
            ),
          ],
        ),
      ),
    );
  }
}
