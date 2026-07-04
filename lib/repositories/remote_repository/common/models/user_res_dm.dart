import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_res_dm.freezed.dart';
part 'user_res_dm.g.dart';

/// Full `user` row — every column, regardless of which endpoint nests it.
/// Shared across modules; callers read only the fields they need.
///
/// [accessToken] is not a `user` table column — only the login endpoint
/// sets it, alongside the user row it authenticates.
@freezed
abstract class UserResDm with _$UserResDm {
  const factory UserResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String email,
    @Default('') String role,
    String? managerId,
    @Default(true) bool isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
    @JsonKey(name: 'access_token') String? accessToken,
  }) = _UserResDm;

  factory UserResDm.fromJson(Map<String, dynamic> json) =>
      _$UserResDmFromJson(json);
}
