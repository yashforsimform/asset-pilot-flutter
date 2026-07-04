/// Which product variant is running.
///
/// The two entry points (`main_mobile.dart`, `main_admin.dart`) each construct
/// `AssetPilotApp` with a fixed variant, which selects the router and
/// navigation shell. This keeps mobile and admin UI trees from mixing.
enum AppVariant {
  /// Employee/Manager experience — iOS/Android.
  mobile,

  /// IT Admin experience — web/desktop.
  admin,
}
