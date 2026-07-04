import 'package:flutter/material.dart';

import 'app.dart';
import 'repositories/local_repository/shared_pref/shared_pref.dart';
import 'values/enumeration/app_variant.dart';

/// Entry point for the Employee/Manager (mobile) variant — iOS/Android.
///
/// Run with: `flutter run -t lib/main_mobile.dart`
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPref.instance.init();
  runApp(const AssetPilotApp(variant: AppVariant.mobile));
}
