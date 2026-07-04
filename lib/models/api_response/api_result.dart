import 'package:flutter/foundation.dart';

import '../exceptions/app_exception.dart';

/// The outcome of a repository/API call: either [ApiSuccess] or [ApiFailure].
///
/// The Retrofit [MyCallAdapter] converts the raw `APIResponse<T>` envelope
/// into an [ApiResult] so cubits can branch with [when] without touching Dio
/// types.
@immutable
sealed class ApiResult<T> {
  const ApiResult();

  /// Branch on the result. Both handlers are required.
  R when<R>({
    required R Function(T data) success,
    required R Function(AppException error) failure,
  }) {
    return switch (this) {
      ApiSuccess<T>(:final data) => success(data),
      ApiFailure<T>(:final error) => failure(error),
    };
  }
}

/// A successful call carrying [data].
final class ApiSuccess<T> extends ApiResult<T> {
  const ApiSuccess(this.data);

  final T data;
}

/// A failed call carrying an [AppException].
final class ApiFailure<T> extends ApiResult<T> {
  const ApiFailure(this.error);

  final AppException error;
}
