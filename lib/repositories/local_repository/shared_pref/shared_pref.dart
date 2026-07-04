import 'package:shared_preferences/shared_preferences.dart';

/// Non-sensitive key-value app preferences.
///
/// Call [init] once during app startup before use.
class SharedPref {
  SharedPref._();

  static final SharedPref instance = SharedPref._();

  static const String _kOnboardingSeen = 'onboarding_seen';

  late final SharedPreferences _prefs;

  Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  bool get onboardingSeen => _prefs.getBool(_kOnboardingSeen) ?? false;

  Future<void> setOnboardingSeen(bool value) =>
      _prefs.setBool(_kOnboardingSeen, value);
}
