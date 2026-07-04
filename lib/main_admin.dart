import 'package:flutter/material.dart';

import 'app.dart';
import 'repositories/local_repository/shared_pref/shared_pref.dart';
import 'values/enumeration/app_variant.dart';

/// Entry point for the IT Admin variant — web/desktop.
///
/// Run with: `flutter run -t lib/main_admin.dart -d chrome`
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.instance.init();
  runApp(const AssetPilotApp(variant: AppVariant.admin));
}
