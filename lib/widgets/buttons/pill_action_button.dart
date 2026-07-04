import 'package:flutter/material.dart';

import 'app_button.dart';

/// Compact action button embedded in table rows (e.g. "Assign", "Approve",
/// "Reject", "Confirm Receipt"). Thin wrapper pinning [AppButton] to its
/// `small` size — kept as a distinct name because these calls are dense and
/// numerous (roughly 40 call sites across the admin tables) and a dedicated
/// name reads clearer at those call sites than a bare size override.
class PillActionButton extends StatelessWidget {
  const PillActionButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.variant = AppButtonVariant.primary,
    this.trailingIcon,
    this.expand = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final AppButtonVariant variant;
  final IconData? trailingIcon;

  /// Fills available width — used when a table column pins a fixed width
  /// on the cell so same-column buttons with different labels (e.g. "View"
  /// vs "Assign") render at a consistent size.
  final bool expand;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: label,
      onPressed: onPressed,
      variant: variant,
      size: AppButtonSize.small,
      trailingIcon: trailingIcon,
      expand: expand,
    );
  }
}
