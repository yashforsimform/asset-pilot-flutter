import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

/// Compact request/response logging — one line per call instead of Dio's
/// stock [LogInterceptor] header/body dump. Debug builds only ([DioClient]
/// wires this behind `kDebugMode`).
class ApiLoggerInterceptor extends Interceptor {
  static const _startTimeKey = 'api_logger_start_time';
  static const _encoder = JsonEncoder.withIndent('  ');

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.extra[_startTimeKey] = DateTime.now();
    debugPrint('→ ${options.method} ${options.uri}');
    if (options.data != null) debugPrint(_pretty(options.data));
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    final elapsed = _elapsedMs(response.requestOptions);
    debugPrint(
      '← ${response.requestOptions.method} ${response.requestOptions.uri} '
      '${response.statusCode} (${elapsed}ms)',
    );
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    final elapsed = _elapsedMs(err.requestOptions);
    final status = err.response?.statusCode;
    debugPrint(
      '✗ ${err.requestOptions.method} ${err.requestOptions.uri} '
      '$status (${elapsed}ms)',
    );
    if (err.response?.data != null) debugPrint(_pretty(err.response!.data));
    handler.next(err);
  }

  int _elapsedMs(RequestOptions options) {
    final start = options.extra[_startTimeKey];
    if (start is! DateTime) return 0;
    return DateTime.now().difference(start).inMilliseconds;
  }

  String _pretty(Object? data) {
    try {
      return _encoder.convert(data);
    } catch (_) {
      return data.toString();
    }
  }
}
