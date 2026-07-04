import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_res_dm.freezed.dart';
part 'user_res_dm.g.dart';

/// Authenticated user returned by the login endpoint.
///
/// Models only the content of the `APIResponse.data` field, per convention.
@freezed
abstract class UserResDm with _$UserResDm {
  const factory UserResDm({
    @Default('') String id,
    @Default('') String name,
    @Default('') String email,
    @Default('') @JsonKey(name: 'role') String role,
    @JsonKey(name: 'access_token') String? accessToken,
  }) = _UserResDm;

  factory UserResDm.fromJson(Map<String, dynamic> json) =>
      _$UserResDmFromJson(json);
}
