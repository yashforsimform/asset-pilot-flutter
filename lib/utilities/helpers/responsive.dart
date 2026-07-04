import 'package:flutter/widgets.dart';

/// Screen size buckets, primarily for the width-driven IT Admin layouts.
enum ScreenType { mobile, tablet, desktop }

/// Centralized responsive breakpoints so screens adapt by width rather than by
/// platform checks (keeps the admin shell working across web + desktop).
abstract final class Responsive {
  static const double tabletMinWidth = 720;
  static const double desktopMinWidth = 1100;

  static ScreenType of(BuildContext context) =>
      fromWidth(MediaQuery.sizeOf(context).width);

  static ScreenType fromWidth(double width) {
    if (width >= desktopMinWidth) return ScreenType.desktop;
    if (width >= tabletMinWidth) return ScreenType.tablet;
    return ScreenType.mobile;
  }

  static bool isDesktop(BuildContext context) =>
      of(context) == ScreenType.desktop;

  static bool isMobile(BuildContext context) =>
      of(context) == ScreenType.mobile;
}
