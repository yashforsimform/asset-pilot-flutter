import 'package:retrofit/retrofit.dart';

import '../../models/api_response/api_result.dart';
import 'error_manager.dart';

/// Adapts a Retrofit call returning `Future<T>` into `Future<ApiResult<T>>`.
///
/// Apply it per-interface (`@RestApi(callAdapter: ApiResultCallAdapter)`) or
/// per-method (`@UseCallAdapter(ApiResultCallAdapter)`) so endpoints can be
/// declared as `Future<ApiResult<ResDm>>`. Retrofit deserializes the response
/// (unwrapping the `APIResponse` envelope's `data` field) into `T`; this
/// adapter turns success/throw into [ApiSuccess]/[ApiFailure], normalizing
/// errors through [errorManager].
///
/// The subclass takes a single type parameter `T` — the unwrapped response
/// type — per the retrofit `CallAdapter` contract.
class ApiResultCallAdapter<T>
    extends CallAdapter<Future<T>, Future<ApiResult<T>>> {
  @override
  Future<ApiResult<T>> adapt(Future<T> Function() call) async {
    try {
      final data = await call();
      return ApiSuccess<T>(data);
    } catch (error, stackTrace) {
      return ApiFailure<T>(errorManager.handle(error, stackTrace));
    }
  }
}
