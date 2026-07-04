import 'package:flutter/foundation.dart';

/// Platform checks that are safe to call on every target, including web.
///
/// Deliberately uses [kIsWeb] + [defaultTargetPlatform] instead of
/// `dart:io Platform`, which does not compile for web. Any code that genuinely
/// needs `dart:io` must go behind a conditional-import stub pair, not here.
abstract final class PlatformHelper {
  /// True on the two mobile targets (the Employee/Manager variant's targets).
  static bool get isMobilePlatform {
    if (kIsWeb) return false;
    return defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android;
  }

  /// True on web or a desktop OS (the IT Admin variant's targets).
  static bool get isDesktopOrWeb {
    if (kIsWeb) return true;
    return defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.linux;
  }

  static bool get isWeb => kIsWeb;
}
