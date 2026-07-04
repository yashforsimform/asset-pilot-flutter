import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/helpers/responsive.dart';
import '../../../values/app_theme/app_colors.dart';
import '../../../values/app_theme/app_text_styles.dart';
import '../../../values/constants/app_constants.dart';

/// IT Admin desktop/web shell with a persistent left navigation rail
/// (mockup A01 chrome). Collapses to icon-only on narrow widths so the same
/// shell serves web and desktop without platform branching.
class AdminShell extends StatelessWidget {
  const AdminShell({super.key, required this.title, required this.child});

  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final expanded = Responsive.isDesktop(context);
    return Scaffold(
      backgroundColor: AppColors.adminCanvas,
      body: Row(
        children: [
          _AdminNav(expanded: expanded),
          Expanded(
            child: Column(
              children: [
                _AdminTopBar(title: title),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AdminNav extends StatelessWidget {
  const _AdminNav({required this.expanded});

  final bool expanded;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final items = <(IconData, String)>[
      (Icons.dashboard_outlined, l10n.adminDashboard),
      (Icons.list_alt_outlined, l10n.adminRequests),
      (Icons.inventory_2_outlined, l10n.adminInventory),
      (Icons.settings_outlined, l10n.adminSettings),
    ];
    return Container(
      width: expanded ? AppConstants.adminNavWidth : 72,
      color: AppColors.primaryDeep,
      padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, bottom: 22),
            child: Text(
              expanded ? 'ASSETPILOT' : 'AP',
              style: AppTextStyles.h3.copyWith(
                color: Colors.white,
                letterSpacing: 1.4,
              ),
            ),
          ),
          for (var i = 0; i < items.length; i++)
            _NavItem(
              icon: items[i].$1,
              label: items[i].$2,
              expanded: expanded,
              selected: i == 0,
            ),
        ],
      ),
    );
  }
}

class _NavItem extends StatelessWidget {
  const _NavItem({
    required this.icon,
    required this.label,
    required this.expanded,
    required this.selected,
  });

  final IconData icon;
  final String label;
  final bool expanded;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      padding: const EdgeInsets.symmetric(vertical: 11, horizontal: 13),
      decoration: BoxDecoration(
        color: selected ? Colors.white.withValues(alpha: 0.13) : null,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 19,
            color: selected ? Colors.white : AppColors.primaryAccent,
          ),
          if (expanded) ...[
            const Gap(11),
            Text(
              label,
              style: AppTextStyles.bodyLarge.copyWith(
                fontSize: 13,
                color: selected ? Colors.white : AppColors.primaryAccent,
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _AdminTopBar extends StatelessWidget {
  const _AdminTopBar({required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(bottom: BorderSide(color: AppColors.borderSubtle)),
      ),
      alignment: Alignment.centerLeft,
      child: Text(title, style: AppTextStyles.h2),
    );
  }
}
