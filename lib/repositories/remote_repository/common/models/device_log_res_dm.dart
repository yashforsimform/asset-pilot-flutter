import 'package:freezed_annotation/freezed_annotation.dart';

part 'device_log_res_dm.freezed.dart';
part 'device_log_res_dm.g.dart';

/// Full `device_log` row — every column. Append-only audit trail entry.
@freezed
abstract class DeviceLogResDm with _$DeviceLogResDm {
  const factory DeviceLogResDm({
    @Default('') String id,
    @Default('') String itemId,
    @Default('') String eventType,
    String? actorId,
    @Default('system') String actorRole,
    String? requestId,
    String? supportRequestId,
    String? extensionRequestId,
    String? handoverRequestId,
    String? fromValue,
    String? toValue,
    String? note,
    @Default(<String, dynamic>{}) Map<String, dynamic> metadata,
    @Default(false) bool isMilestone,
    DateTime? occurredAt,
  }) = _DeviceLogResDm;

  factory DeviceLogResDm.fromJson(Map<String, dynamic> json) =>
      _$DeviceLogResDmFromJson(json);
}
