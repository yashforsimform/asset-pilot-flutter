import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utilities/extensions/context_extensions.dart';
import '../../../values/app_theme/app_colors.dart';
import '../../../values/app_theme/app_text_styles.dart';

/// Employee/Manager home shell with bottom navigation (mockup E02 chrome).
///
/// Tab bodies are placeholders; individual feature screens are built later.
class MobileShellScreen extends StatefulWidget {
  const MobileShellScreen({super.key});

  @override
  State<MobileShellScreen> createState() => _MobileShellScreenState();
}

class _MobileShellScreenState extends State<MobileShellScreen> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final tabs = [
      l10n.navDevices,
      l10n.navRequests,
      l10n.navHandover,
      l10n.navProfile,
    ];
    return Scaffold(
      backgroundColor: AppColors.scaffoldAlt,
      appBar: AppBar(title: Text(tabs[_index], style: AppTextStyles.h2)),
      body: _ComingSoon(label: tabs[_index]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (i) => setState(() => _index = i),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.laptop_mac_outlined),
            label: l10n.navDevices,
          ),
          NavigationDestination(
            icon: const Icon(Icons.list_alt_outlined),
            label: l10n.navRequests,
          ),
          NavigationDestination(
            icon: const Icon(Icons.swap_horiz_outlined),
            label: l10n.navHandover,
          ),
          NavigationDestination(
            icon: const Icon(Icons.person_outline),
            label: l10n.navProfile,
          ),
        ],
      ),
    );
  }
}

class _ComingSoon extends StatelessWidget {
  const _ComingSoon({required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(Icons.dashboard_customize_outlined,
              size: 40, color: AppColors.primary),
          const Gap(12),
          Text(label, style: AppTextStyles.h3),
          const Gap(4),
          Text(context.l10n.comingSoon, style: AppTextStyles.bodySmall),
        ],
      ),
    );
  }
}
