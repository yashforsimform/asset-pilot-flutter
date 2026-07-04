import 'package:freezed_annotation/freezed_annotation.dart';

part 'extension_request_res_dm.freezed.dart';
part 'extension_request_res_dm.g.dart';

/// Full `extension_request` row — every column.
@freezed
abstract class ExtensionRequestResDm with _$ExtensionRequestResDm {
  const factory ExtensionRequestResDm({
    @Default('') String id,
    @Default('') String originalRequestId,
    @Default('') String requesterId,
    DateTime? currentAssignedTo,
    DateTime? extendedTo,
    @Default('pending') String status,

    @Default(false) bool requiresMgrApproval,
    String? managerId,
    @Default('not_required') String mgrApprovalStatus,
    String? managerNote,
    DateTime? managerDecidedAt,

    String? itDecidedBy,
    String? itNote,
    DateTime? itDecidedAt,

    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ExtensionRequestResDm;

  factory ExtensionRequestResDm.fromJson(Map<String, dynamic> json) =>
      _$ExtensionRequestResDmFromJson(json);
}
