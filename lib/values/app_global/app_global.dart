import 'package:flutter/widgets.dart';

/// App-wide singletons/instances that need to be reachable outside the widget
/// tree (e.g. from cubits or the error manager).
abstract final class AppGlobal {
  /// Root navigator key — useful for showing dialogs/snackbars or navigating
  /// from outside a [BuildContext].
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();
}
