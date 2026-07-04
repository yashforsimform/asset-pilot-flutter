/// Build flavors. Wiring for dev/uat/prod builds is deferred, but the shape is
/// in place so flavored entry points can set [Env.current] at startup.
enum Flavor { dev, uat, prod }

/// Per-flavor environment configuration.
///
/// Today a single [dev] config is provided and used by default. When flavors
/// are introduced, each flavored `main_*` entry sets [Env.current] before
/// `runApp`, and [values] gains uat/prod entries — nothing else changes.
class Env {
  const Env({required this.flavor, required this.baseUrl});

  final Flavor flavor;
  final String baseUrl;

  static const Map<Flavor, Env> values = <Flavor, Env>{
    Flavor.dev: Env(
      flavor: Flavor.dev,
      baseUrl: 'https://dev.api.assetpilot.example/v1',
    ),
    Flavor.uat: Env(
      flavor: Flavor.uat,
      baseUrl: 'https://uat.api.assetpilot.example/v1',
    ),
    Flavor.prod: Env(
      flavor: Flavor.prod,
      baseUrl: 'https://api.assetpilot.example/v1',
    ),
  };

  /// The active environment. Defaults to [Flavor.dev] until flavors are wired.
  static Env current = values[Flavor.dev]!;

  static void init(Flavor flavor) => current = values[flavor]!;
}
