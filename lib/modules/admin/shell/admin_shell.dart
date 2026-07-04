import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../utilities/helpers/responsive.dart';
import '../../../widgets/nav/app_side_nav.dart';
import '../../../widgets/nav/nav_item.dart';

/// IT Admin desktop/web shell with a persistent left navigation rail
/// (mockup A01 chrome).
///
/// Built once by the [StatefulShellRoute] in `admin_routes.dart` and stays
/// mounted across navigation — [navigationShell] swaps only the active
/// branch's content, so sidebar taps no longer replace the whole screen
/// (no rebuild, no page transition). Collapses to icon-only on narrow
/// widths so the same shell serves web and desktop without platform
/// branching.
class AdminShell extends StatelessWidget {
  const AdminShell({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    final expanded = Responsive.isDesktop(context);
    final l10n = context.l10n;
    final items = [
      NavItem(
        id: 'dashboard',
        label: l10n.adminDashboard,
        icon: Icons.dashboard_outlined,
      ),
      NavItem(
        id: 'requests',
        label: l10n.adminRequests,
        icon: Icons.list_alt_outlined,
      ),
      NavItem(
        id: 'inventory',
        label: l10n.adminInventory,
        icon: Icons.inventory_2_outlined,
      ),
      NavItem(
        id: 'settings',
        label: l10n.adminSettings,
        icon: Icons.settings_outlined,
      ),
    ];
    return Scaffold(
      backgroundColor: context.appColors.adminCanvas,
      body: Row(
        children: [
          AppSideNav(
            items: items,
            selectedId: items[navigationShell.currentIndex].id,
            onSelected: (id) => _onSelected(id),
            brandLabel: 'ASSETPILOT',
            expanded: expanded,
          ),
          Expanded(child: navigationShell),
        ],
      ),
    );
  }

  void _onSelected(String id) {
    final index = switch (id) {
      'dashboard' => 0,
      'requests' => 1,
      _ => null,
    };
    // Only ids with a built branch switch; 'inventory'/'settings' are inert
    // until their screens exist.
    if (index != null) navigationShell.goBranch(index);
  }
}

/// Top bar rendered by each admin screen itself (title is per-screen and,
/// for [RequestDetailScreen]-style screens, dynamic — e.g. includes the
/// request id — so it can't be hoisted onto the now-persistent
/// [AdminShell]).
class AdminPageHeader extends StatelessWidget {
  const AdminPageHeader({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      padding: const EdgeInsets.symmetric(horizontal: 28),
      decoration: BoxDecoration(
        color: context.appColors.surface,
        border: Border(
          bottom: BorderSide(color: context.appColors.borderSubtle),
        ),
      ),
      alignment: Alignment.centerLeft,
      child: Text(title, style: context.appTextStyles.h2),
    );
  }
}
