import 'package:freezed_annotation/freezed_annotation.dart';

part 'handover_request_res_dm.freezed.dart';
part 'handover_request_res_dm.g.dart';

/// Full `handover_request` row — every column.
@freezed
abstract class HandoverRequestResDm with _$HandoverRequestResDm {
  const factory HandoverRequestResDm({
    @Default('') String id,
    @Default('') String itemId,
    @Default('') String ownerId,
    @Default('') String borrowerId,
    int? requestedDurationHours,
    @Default('requested') String status,
    DateTime? requestedAt,
    DateTime? decidedAt,
    DateTime? completedAt,
    String? note,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _HandoverRequestResDm;

  factory HandoverRequestResDm.fromJson(Map<String, dynamic> json) =>
      _$HandoverRequestResDmFromJson(json);
}
