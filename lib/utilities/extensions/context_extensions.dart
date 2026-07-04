import 'package:flutter/material.dart';

import '../../generated/l10n/app_localizations.dart';

/// Terse access to common per-[BuildContext] objects.
extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colors => Theme.of(this).colorScheme;

  /// Localized strings.
  AppLocalizations get l10n => AppLocalizations.of(this);

  Size get screenSize => MediaQuery.sizeOf(this);
}
