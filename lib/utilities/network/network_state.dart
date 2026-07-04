import 'package:flutter/foundation.dart';

/// Represents the lifecycle of a piece of asynchronously-loaded data.
///
/// Held in Cubit state (defaulting to [Idle]) and rendered in the UI via a
/// `switch` expression. See the state-management convention for usage.
@immutable
sealed class NetworkState<T> {
  const NetworkState();
}

/// No request has been made yet (initial / reset).
final class Idle<T> extends NetworkState<T> {
  const Idle();
}

/// A request is in flight.
final class Loading<T> extends NetworkState<T> {
  const Loading();
}

/// A request completed successfully with [data].
final class Success<T> extends NetworkState<T> {
  const Success(this.data);

  final T data;
}

/// A request failed with a human-readable [message].
final class Error<T> extends NetworkState<T> {
  const Error(this.message);

  final String message;
}

/// Convenience accessors for reading a [NetworkState] without a full switch.
extension NetworkStateX<T> on NetworkState<T> {
  bool get isIdle => this is Idle<T>;

  bool get isLoading => this is Loading<T>;

  bool get isSuccess => this is Success<T>;

  bool get isError => this is Error<T>;

  /// The data if this is [Success], otherwise null.
  T? get dataOrNull => this is Success<T> ? (this as Success<T>).data : null;
}
