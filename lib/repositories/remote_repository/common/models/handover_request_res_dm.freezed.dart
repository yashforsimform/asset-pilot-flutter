// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'handover_request_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HandoverRequestResDm {

 String get id; String get itemId; String get ownerId; String get borrowerId; int? get requestedDurationHours; String get status; DateTime? get requestedAt; DateTime? get decidedAt; DateTime? get completedAt; String? get note; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HandoverRequestResDmCopyWith<HandoverRequestResDm> get copyWith => _$HandoverRequestResDmCopyWithImpl<HandoverRequestResDm>(this as HandoverRequestResDm, _$identity);

  /// Serializes this HandoverRequestResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HandoverRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.borrowerId, borrowerId) || other.borrowerId == borrowerId)&&(identical(other.requestedDurationHours, requestedDurationHours) || other.requestedDurationHours == requestedDurationHours)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,ownerId,borrowerId,requestedDurationHours,status,requestedAt,decidedAt,completedAt,note,createdAt,updatedAt);

@override
String toString() {
  return 'HandoverRequestResDm(id: $id, itemId: $itemId, ownerId: $ownerId, borrowerId: $borrowerId, requestedDurationHours: $requestedDurationHours, status: $status, requestedAt: $requestedAt, decidedAt: $decidedAt, completedAt: $completedAt, note: $note, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $HandoverRequestResDmCopyWith<$Res>  {
  factory $HandoverRequestResDmCopyWith(HandoverRequestResDm value, $Res Function(HandoverRequestResDm) _then) = _$HandoverRequestResDmCopyWithImpl;
@useResult
$Res call({
 String id, String itemId, String ownerId, String borrowerId, int? requestedDurationHours, String status, DateTime? requestedAt, DateTime? decidedAt, DateTime? completedAt, String? note, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$HandoverRequestResDmCopyWithImpl<$Res>
    implements $HandoverRequestResDmCopyWith<$Res> {
  _$HandoverRequestResDmCopyWithImpl(this._self, this._then);

  final HandoverRequestResDm _self;
  final $Res Function(HandoverRequestResDm) _then;

/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemId = null,Object? ownerId = null,Object? borrowerId = null,Object? requestedDurationHours = freezed,Object? status = null,Object? requestedAt = freezed,Object? decidedAt = freezed,Object? completedAt = freezed,Object? note = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,borrowerId: null == borrowerId ? _self.borrowerId : borrowerId // ignore: cast_nullable_to_non_nullable
as String,requestedDurationHours: freezed == requestedDurationHours ? _self.requestedDurationHours : requestedDurationHours // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [HandoverRequestResDm].
extension HandoverRequestResDmPatterns on HandoverRequestResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HandoverRequestResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HandoverRequestResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HandoverRequestResDm value)  $default,){
final _that = this;
switch (_that) {
case _HandoverRequestResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HandoverRequestResDm value)?  $default,){
final _that = this;
switch (_that) {
case _HandoverRequestResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String itemId,  String ownerId,  String borrowerId,  int? requestedDurationHours,  String status,  DateTime? requestedAt,  DateTime? decidedAt,  DateTime? completedAt,  String? note,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HandoverRequestResDm() when $default != null:
return $default(_that.id,_that.itemId,_that.ownerId,_that.borrowerId,_that.requestedDurationHours,_that.status,_that.requestedAt,_that.decidedAt,_that.completedAt,_that.note,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String itemId,  String ownerId,  String borrowerId,  int? requestedDurationHours,  String status,  DateTime? requestedAt,  DateTime? decidedAt,  DateTime? completedAt,  String? note,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _HandoverRequestResDm():
return $default(_that.id,_that.itemId,_that.ownerId,_that.borrowerId,_that.requestedDurationHours,_that.status,_that.requestedAt,_that.decidedAt,_that.completedAt,_that.note,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String itemId,  String ownerId,  String borrowerId,  int? requestedDurationHours,  String status,  DateTime? requestedAt,  DateTime? decidedAt,  DateTime? completedAt,  String? note,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _HandoverRequestResDm() when $default != null:
return $default(_that.id,_that.itemId,_that.ownerId,_that.borrowerId,_that.requestedDurationHours,_that.status,_that.requestedAt,_that.decidedAt,_that.completedAt,_that.note,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HandoverRequestResDm implements HandoverRequestResDm {
  const _HandoverRequestResDm({this.id = '', this.itemId = '', this.ownerId = '', this.borrowerId = '', this.requestedDurationHours, this.status = 'requested', this.requestedAt, this.decidedAt, this.completedAt, this.note, this.createdAt, this.updatedAt});
  factory _HandoverRequestResDm.fromJson(Map<String, dynamic> json) => _$HandoverRequestResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String itemId;
@override@JsonKey() final  String ownerId;
@override@JsonKey() final  String borrowerId;
@override final  int? requestedDurationHours;
@override@JsonKey() final  String status;
@override final  DateTime? requestedAt;
@override final  DateTime? decidedAt;
@override final  DateTime? completedAt;
@override final  String? note;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HandoverRequestResDmCopyWith<_HandoverRequestResDm> get copyWith => __$HandoverRequestResDmCopyWithImpl<_HandoverRequestResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HandoverRequestResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HandoverRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.ownerId, ownerId) || other.ownerId == ownerId)&&(identical(other.borrowerId, borrowerId) || other.borrowerId == borrowerId)&&(identical(other.requestedDurationHours, requestedDurationHours) || other.requestedDurationHours == requestedDurationHours)&&(identical(other.status, status) || other.status == status)&&(identical(other.requestedAt, requestedAt) || other.requestedAt == requestedAt)&&(identical(other.decidedAt, decidedAt) || other.decidedAt == decidedAt)&&(identical(other.completedAt, completedAt) || other.completedAt == completedAt)&&(identical(other.note, note) || other.note == note)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,ownerId,borrowerId,requestedDurationHours,status,requestedAt,decidedAt,completedAt,note,createdAt,updatedAt);

@override
String toString() {
  return 'HandoverRequestResDm(id: $id, itemId: $itemId, ownerId: $ownerId, borrowerId: $borrowerId, requestedDurationHours: $requestedDurationHours, status: $status, requestedAt: $requestedAt, decidedAt: $decidedAt, completedAt: $completedAt, note: $note, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$HandoverRequestResDmCopyWith<$Res> implements $HandoverRequestResDmCopyWith<$Res> {
  factory _$HandoverRequestResDmCopyWith(_HandoverRequestResDm value, $Res Function(_HandoverRequestResDm) _then) = __$HandoverRequestResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String itemId, String ownerId, String borrowerId, int? requestedDurationHours, String status, DateTime? requestedAt, DateTime? decidedAt, DateTime? completedAt, String? note, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$HandoverRequestResDmCopyWithImpl<$Res>
    implements _$HandoverRequestResDmCopyWith<$Res> {
  __$HandoverRequestResDmCopyWithImpl(this._self, this._then);

  final _HandoverRequestResDm _self;
  final $Res Function(_HandoverRequestResDm) _then;

/// Create a copy of HandoverRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemId = null,Object? ownerId = null,Object? borrowerId = null,Object? requestedDurationHours = freezed,Object? status = null,Object? requestedAt = freezed,Object? decidedAt = freezed,Object? completedAt = freezed,Object? note = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_HandoverRequestResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,ownerId: null == ownerId ? _self.ownerId : ownerId // ignore: cast_nullable_to_non_nullable
as String,borrowerId: null == borrowerId ? _self.borrowerId : borrowerId // ignore: cast_nullable_to_non_nullable
as String,requestedDurationHours: freezed == requestedDurationHours ? _self.requestedDurationHours : requestedDurationHours // ignore: cast_nullable_to_non_nullable
as int?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,requestedAt: freezed == requestedAt ? _self.requestedAt : requestedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,decidedAt: freezed == decidedAt ? _self.decidedAt : decidedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,completedAt: freezed == completedAt ? _self.completedAt : completedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
