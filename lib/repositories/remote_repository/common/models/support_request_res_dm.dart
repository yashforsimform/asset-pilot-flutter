import 'package:freezed_annotation/freezed_annotation.dart';

part 'support_request_res_dm.freezed.dart';
part 'support_request_res_dm.g.dart';

/// Full `support_request` row — every column.
@freezed
abstract class SupportRequestResDm with _$SupportRequestResDm {
  const factory SupportRequestResDm({
    @Default('') String id,
    @Default('') String itemId,
    @Default('') String requesterId,
    String? requestId,
    @Default('') String type,
    @Default('') String description,
    @Default('open') String status,

    String? resolution,
    String? itNote,
    String? swappedToItemId,

    DateTime? filedAt,
    String? resolvedBy,
    DateTime? resolvedAt,
    @Default(false) bool autoClosed,

    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _SupportRequestResDm;

  factory SupportRequestResDm.fromJson(Map<String, dynamic> json) =>
      _$SupportRequestResDmFromJson(json);
}
