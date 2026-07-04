import 'package:flutter/foundation.dart';

/// The standard envelope every backend response is wrapped in.
///
/// IMPORTANT (convention): feature response models should model ONLY the
/// content of the [data] field — never re-declare this envelope. The
/// [MyCallAdapter] unwraps it into an `ApiResult<T>` automatically.
@immutable
class APIResponse<T> {
  const APIResponse({this.data, this.message, this.statusCode});

  factory APIResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return APIResponse<T>(
      data: json['data'] == null ? null : fromJsonT(json['data']),
      message: json['message'] as String?,
      statusCode: json['statusCode']?.toString(),
    );
  }

  final T? data;
  final String? message;
  final String? statusCode;
}
