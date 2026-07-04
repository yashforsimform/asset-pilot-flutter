import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_res_dm.freezed.dart';
part 'item_res_dm.g.dart';

/// Full `item` row (the physical device) — every column, regardless of
/// which endpoint nests it. Status/owner-type wire strings are parsed to
/// [DeviceStatus]/[OwnerType] by module-level `xFromWire` helpers, not here.
@freezed
abstract class ItemResDm with _$ItemResDm {
  const factory ItemResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String serialNo,
    @Default('') String categoryId,
    @Default('company') String ownerType,
    String? clientName,
    @Default('available') String status,
    String? currentOwnerId,
    DateTime? purchaseDate,
    @Default('') String qrCodeToken,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ItemResDm;

  factory ItemResDm.fromJson(Map<String, dynamic> json) =>
      _$ItemResDmFromJson(json);
}
