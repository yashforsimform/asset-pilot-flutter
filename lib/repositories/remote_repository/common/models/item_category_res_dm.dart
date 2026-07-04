import 'package:freezed_annotation/freezed_annotation.dart';

part 'item_category_res_dm.freezed.dart';
part 'item_category_res_dm.g.dart';

/// Full `item_category` row — every column.
@freezed
abstract class ItemCategoryResDm with _$ItemCategoryResDm {
  const factory ItemCategoryResDm({
    @Default('') String id,
    @Default('') String name,
    String? description,
    @Default(false) bool requiresMgrApproval,
    @Default(true) bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _ItemCategoryResDm;

  factory ItemCategoryResDm.fromJson(Map<String, dynamic> json) =>
      _$ItemCategoryResDmFromJson(json);
}
