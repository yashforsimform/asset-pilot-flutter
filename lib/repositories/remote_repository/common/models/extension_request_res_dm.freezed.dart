// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'extension_request_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExtensionRequestResDm {

 String get id; String get originalRequestId; String get requesterId; DateTime? get currentAssignedTo; DateTime? get extendedTo; String get status; bool get requiresMgrApproval; String? get managerId; String get mgrApprovalStatus; String? get managerNote; DateTime? get managerDecidedAt; String? get itDecidedBy; String? get itNote; DateTime? get itDecidedAt; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of ExtensionRequestResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExtensionRequestResDmCopyWith<ExtensionRequestResDm> get copyWith => _$ExtensionRequestResDmCopyWithImpl<ExtensionRequestResDm>(this as ExtensionRequestResDm, _$identity);

  /// Serializes this ExtensionRequestResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExtensionRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.originalRequestId, originalRequestId) || other.originalRequestId == originalRequestId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.currentAssignedTo, currentAssignedTo) || other.currentAssignedTo == currentAssignedTo)&&(identical(other.extendedTo, extendedTo) || other.extendedTo == extendedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerNote, managerNote) || other.managerNote == managerNote)&&(identical(other.managerDecidedAt, managerDecidedAt) || other.managerDecidedAt == managerDecidedAt)&&(identical(other.itDecidedBy, itDecidedBy) || other.itDecidedBy == itDecidedBy)&&(identical(other.itNote, itNote) || other.itNote == itNote)&&(identical(other.itDecidedAt, itDecidedAt) || other.itDecidedAt == itDecidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originalRequestId,requesterId,currentAssignedTo,extendedTo,status,requiresMgrApproval,managerId,mgrApprovalStatus,managerNote,managerDecidedAt,itDecidedBy,itNote,itDecidedAt,createdAt,updatedAt);

@override
String toString() {
  return 'ExtensionRequestResDm(id: $id, originalRequestId: $originalRequestId, requesterId: $requesterId, currentAssignedTo: $currentAssignedTo, extendedTo: $extendedTo, status: $status, requiresMgrApproval: $requiresMgrApproval, managerId: $managerId, mgrApprovalStatus: $mgrApprovalStatus, managerNote: $managerNote, managerDecidedAt: $managerDecidedAt, itDecidedBy: $itDecidedBy, itNote: $itNote, itDecidedAt: $itDecidedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $ExtensionRequestResDmCopyWith<$Res>  {
  factory $ExtensionRequestResDmCopyWith(ExtensionRequestResDm value, $Res Function(ExtensionRequestResDm) _then) = _$ExtensionRequestResDmCopyWithImpl;
@useResult
$Res call({
 String id, String originalRequestId, String requesterId, DateTime? currentAssignedTo, DateTime? extendedTo, String status, bool requiresMgrApproval, String? managerId, String mgrApprovalStatus, String? managerNote, DateTime? managerDecidedAt, String? itDecidedBy, String? itNote, DateTime? itDecidedAt, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$ExtensionRequestResDmCopyWithImpl<$Res>
    implements $ExtensionRequestResDmCopyWith<$Res> {
  _$ExtensionRequestResDmCopyWithImpl(this._self, this._then);

  final ExtensionRequestResDm _self;
  final $Res Function(ExtensionRequestResDm) _then;

/// Create a copy of ExtensionRequestResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? originalRequestId = null,Object? requesterId = null,Object? currentAssignedTo = freezed,Object? extendedTo = freezed,Object? status = null,Object? requiresMgrApproval = null,Object? managerId = freezed,Object? mgrApprovalStatus = null,Object? managerNote = freezed,Object? managerDecidedAt = freezed,Object? itDecidedBy = freezed,Object? itNote = freezed,Object? itDecidedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,originalRequestId: null == originalRequestId ? _self.originalRequestId : originalRequestId // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,currentAssignedTo: freezed == currentAssignedTo ? _self.currentAssignedTo : currentAssignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,extendedTo: freezed == extendedTo ? _self.extendedTo : extendedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as String,managerNote: freezed == managerNote ? _self.managerNote : managerNote // ignore: cast_nullable_to_non_nullable
as String?,managerDecidedAt: freezed == managerDecidedAt ? _self.managerDecidedAt : managerDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,itDecidedBy: freezed == itDecidedBy ? _self.itDecidedBy : itDecidedBy // ignore: cast_nullable_to_non_nullable
as String?,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,itDecidedAt: freezed == itDecidedAt ? _self.itDecidedAt : itDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExtensionRequestResDm].
extension ExtensionRequestResDmPatterns on ExtensionRequestResDm {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExtensionRequestResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExtensionRequestResDm() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExtensionRequestResDm value)  $default,){
final _that = this;
switch (_that) {
case _ExtensionRequestResDm():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExtensionRequestResDm value)?  $default,){
final _that = this;
switch (_that) {
case _ExtensionRequestResDm() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String originalRequestId,  String requesterId,  DateTime? currentAssignedTo,  DateTime? extendedTo,  String status,  bool requiresMgrApproval,  String? managerId,  String mgrApprovalStatus,  String? managerNote,  DateTime? managerDecidedAt,  String? itDecidedBy,  String? itNote,  DateTime? itDecidedAt,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExtensionRequestResDm() when $default != null:
return $default(_that.id,_that.originalRequestId,_that.requesterId,_that.currentAssignedTo,_that.extendedTo,_that.status,_that.requiresMgrApproval,_that.managerId,_that.mgrApprovalStatus,_that.managerNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itNote,_that.itDecidedAt,_that.createdAt,_that.updatedAt);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String originalRequestId,  String requesterId,  DateTime? currentAssignedTo,  DateTime? extendedTo,  String status,  bool requiresMgrApproval,  String? managerId,  String mgrApprovalStatus,  String? managerNote,  DateTime? managerDecidedAt,  String? itDecidedBy,  String? itNote,  DateTime? itDecidedAt,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _ExtensionRequestResDm():
return $default(_that.id,_that.originalRequestId,_that.requesterId,_that.currentAssignedTo,_that.extendedTo,_that.status,_that.requiresMgrApproval,_that.managerId,_that.mgrApprovalStatus,_that.managerNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itNote,_that.itDecidedAt,_that.createdAt,_that.updatedAt);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String originalRequestId,  String requesterId,  DateTime? currentAssignedTo,  DateTime? extendedTo,  String status,  bool requiresMgrApproval,  String? managerId,  String mgrApprovalStatus,  String? managerNote,  DateTime? managerDecidedAt,  String? itDecidedBy,  String? itNote,  DateTime? itDecidedAt,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _ExtensionRequestResDm() when $default != null:
return $default(_that.id,_that.originalRequestId,_that.requesterId,_that.currentAssignedTo,_that.extendedTo,_that.status,_that.requiresMgrApproval,_that.managerId,_that.mgrApprovalStatus,_that.managerNote,_that.managerDecidedAt,_that.itDecidedBy,_that.itNote,_that.itDecidedAt,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ExtensionRequestResDm implements ExtensionRequestResDm {
  const _ExtensionRequestResDm({this.id = '', this.originalRequestId = '', this.requesterId = '', this.currentAssignedTo, this.extendedTo, this.status = 'pending', this.requiresMgrApproval = false, this.managerId, this.mgrApprovalStatus = 'not_required', this.managerNote, this.managerDecidedAt, this.itDecidedBy, this.itNote, this.itDecidedAt, this.createdAt, this.updatedAt});
  factory _ExtensionRequestResDm.fromJson(Map<String, dynamic> json) => _$ExtensionRequestResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String originalRequestId;
@override@JsonKey() final  String requesterId;
@override final  DateTime? currentAssignedTo;
@override final  DateTime? extendedTo;
@override@JsonKey() final  String status;
@override@JsonKey() final  bool requiresMgrApproval;
@override final  String? managerId;
@override@JsonKey() final  String mgrApprovalStatus;
@override final  String? managerNote;
@override final  DateTime? managerDecidedAt;
@override final  String? itDecidedBy;
@override final  String? itNote;
@override final  DateTime? itDecidedAt;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of ExtensionRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExtensionRequestResDmCopyWith<_ExtensionRequestResDm> get copyWith => __$ExtensionRequestResDmCopyWithImpl<_ExtensionRequestResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExtensionRequestResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExtensionRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.originalRequestId, originalRequestId) || other.originalRequestId == originalRequestId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.currentAssignedTo, currentAssignedTo) || other.currentAssignedTo == currentAssignedTo)&&(identical(other.extendedTo, extendedTo) || other.extendedTo == extendedTo)&&(identical(other.status, status) || other.status == status)&&(identical(other.requiresMgrApproval, requiresMgrApproval) || other.requiresMgrApproval == requiresMgrApproval)&&(identical(other.managerId, managerId) || other.managerId == managerId)&&(identical(other.mgrApprovalStatus, mgrApprovalStatus) || other.mgrApprovalStatus == mgrApprovalStatus)&&(identical(other.managerNote, managerNote) || other.managerNote == managerNote)&&(identical(other.managerDecidedAt, managerDecidedAt) || other.managerDecidedAt == managerDecidedAt)&&(identical(other.itDecidedBy, itDecidedBy) || other.itDecidedBy == itDecidedBy)&&(identical(other.itNote, itNote) || other.itNote == itNote)&&(identical(other.itDecidedAt, itDecidedAt) || other.itDecidedAt == itDecidedAt)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,originalRequestId,requesterId,currentAssignedTo,extendedTo,status,requiresMgrApproval,managerId,mgrApprovalStatus,managerNote,managerDecidedAt,itDecidedBy,itNote,itDecidedAt,createdAt,updatedAt);

@override
String toString() {
  return 'ExtensionRequestResDm(id: $id, originalRequestId: $originalRequestId, requesterId: $requesterId, currentAssignedTo: $currentAssignedTo, extendedTo: $extendedTo, status: $status, requiresMgrApproval: $requiresMgrApproval, managerId: $managerId, mgrApprovalStatus: $mgrApprovalStatus, managerNote: $managerNote, managerDecidedAt: $managerDecidedAt, itDecidedBy: $itDecidedBy, itNote: $itNote, itDecidedAt: $itDecidedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$ExtensionRequestResDmCopyWith<$Res> implements $ExtensionRequestResDmCopyWith<$Res> {
  factory _$ExtensionRequestResDmCopyWith(_ExtensionRequestResDm value, $Res Function(_ExtensionRequestResDm) _then) = __$ExtensionRequestResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String originalRequestId, String requesterId, DateTime? currentAssignedTo, DateTime? extendedTo, String status, bool requiresMgrApproval, String? managerId, String mgrApprovalStatus, String? managerNote, DateTime? managerDecidedAt, String? itDecidedBy, String? itNote, DateTime? itDecidedAt, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$ExtensionRequestResDmCopyWithImpl<$Res>
    implements _$ExtensionRequestResDmCopyWith<$Res> {
  __$ExtensionRequestResDmCopyWithImpl(this._self, this._then);

  final _ExtensionRequestResDm _self;
  final $Res Function(_ExtensionRequestResDm) _then;

/// Create a copy of ExtensionRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? originalRequestId = null,Object? requesterId = null,Object? currentAssignedTo = freezed,Object? extendedTo = freezed,Object? status = null,Object? requiresMgrApproval = null,Object? managerId = freezed,Object? mgrApprovalStatus = null,Object? managerNote = freezed,Object? managerDecidedAt = freezed,Object? itDecidedBy = freezed,Object? itNote = freezed,Object? itDecidedAt = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_ExtensionRequestResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,originalRequestId: null == originalRequestId ? _self.originalRequestId : originalRequestId // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,currentAssignedTo: freezed == currentAssignedTo ? _self.currentAssignedTo : currentAssignedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,extendedTo: freezed == extendedTo ? _self.extendedTo : extendedTo // ignore: cast_nullable_to_non_nullable
as DateTime?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requiresMgrApproval: null == requiresMgrApproval ? _self.requiresMgrApproval : requiresMgrApproval // ignore: cast_nullable_to_non_nullable
as bool,managerId: freezed == managerId ? _self.managerId : managerId // ignore: cast_nullable_to_non_nullable
as String?,mgrApprovalStatus: null == mgrApprovalStatus ? _self.mgrApprovalStatus : mgrApprovalStatus // ignore: cast_nullable_to_non_nullable
as String,managerNote: freezed == managerNote ? _self.managerNote : managerNote // ignore: cast_nullable_to_non_nullable
as String?,managerDecidedAt: freezed == managerDecidedAt ? _self.managerDecidedAt : managerDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,itDecidedBy: freezed == itDecidedBy ? _self.itDecidedBy : itDecidedBy // ignore: cast_nullable_to_non_nullable
as String?,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,itDecidedAt: freezed == itDecidedAt ? _self.itDecidedAt : itDecidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
