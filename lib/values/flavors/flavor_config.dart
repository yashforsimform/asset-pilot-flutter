import '../../env/env.dart';

/// Placeholder for build-flavor configuration.
///
/// Flavors (dev/uat/prod) are DEFERRED in this scaffold. The active
/// environment lives in [Env.current] and defaults to [Flavor.dev]. When
/// flavored entry points are introduced, each will call [FlavorConfig.apply]
/// before `runApp`, and this file gains any flavor-specific, non-env config
/// (app title suffix, feature flags, etc.).
abstract final class FlavorConfig {
  static Flavor get flavor => Env.current.flavor;

  static void apply(Flavor flavor) => Env.init(flavor);
}
