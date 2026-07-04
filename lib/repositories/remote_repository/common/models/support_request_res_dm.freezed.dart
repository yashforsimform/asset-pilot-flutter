// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'support_request_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SupportRequestResDm {

 String get id; String get itemId; String get requesterId; String? get requestId; String get type; String get description; String get status; String? get resolution; String? get itNote; String? get swappedToItemId; DateTime? get filedAt; String? get resolvedBy; DateTime? get resolvedAt; bool get autoClosed; DateTime? get createdAt; DateTime? get updatedAt;
/// Create a copy of SupportRequestResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SupportRequestResDmCopyWith<SupportRequestResDm> get copyWith => _$SupportRequestResDmCopyWithImpl<SupportRequestResDm>(this as SupportRequestResDm, _$identity);

  /// Serializes this SupportRequestResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SupportRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.itNote, itNote) || other.itNote == itNote)&&(identical(other.swappedToItemId, swappedToItemId) || other.swappedToItemId == swappedToItemId)&&(identical(other.filedAt, filedAt) || other.filedAt == filedAt)&&(identical(other.resolvedBy, resolvedBy) || other.resolvedBy == resolvedBy)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.autoClosed, autoClosed) || other.autoClosed == autoClosed)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,requesterId,requestId,type,description,status,resolution,itNote,swappedToItemId,filedAt,resolvedBy,resolvedAt,autoClosed,createdAt,updatedAt);

@override
String toString() {
  return 'SupportRequestResDm(id: $id, itemId: $itemId, requesterId: $requesterId, requestId: $requestId, type: $type, description: $description, status: $status, resolution: $resolution, itNote: $itNote, swappedToItemId: $swappedToItemId, filedAt: $filedAt, resolvedBy: $resolvedBy, resolvedAt: $resolvedAt, autoClosed: $autoClosed, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class $SupportRequestResDmCopyWith<$Res>  {
  factory $SupportRequestResDmCopyWith(SupportRequestResDm value, $Res Function(SupportRequestResDm) _then) = _$SupportRequestResDmCopyWithImpl;
@useResult
$Res call({
 String id, String itemId, String requesterId, String? requestId, String type, String description, String status, String? resolution, String? itNote, String? swappedToItemId, DateTime? filedAt, String? resolvedBy, DateTime? resolvedAt, bool autoClosed, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class _$SupportRequestResDmCopyWithImpl<$Res>
    implements $SupportRequestResDmCopyWith<$Res> {
  _$SupportRequestResDmCopyWithImpl(this._self, this._then);

  final SupportRequestResDm _self;
  final $Res Function(SupportRequestResDm) _then;

/// Create a copy of SupportRequestResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemId = null,Object? requesterId = null,Object? requestId = freezed,Object? type = null,Object? description = null,Object? status = null,Object? resolution = freezed,Object? itNote = freezed,Object? swappedToItemId = freezed,Object? filedAt = freezed,Object? resolvedBy = freezed,Object? resolvedAt = freezed,Object? autoClosed = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,swappedToItemId: freezed == swappedToItemId ? _self.swappedToItemId : swappedToItemId // ignore: cast_nullable_to_non_nullable
as String?,filedAt: freezed == filedAt ? _self.filedAt : filedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolvedBy: freezed == resolvedBy ? _self.resolvedBy : resolvedBy // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,autoClosed: null == autoClosed ? _self.autoClosed : autoClosed // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [SupportRequestResDm].
extension SupportRequestResDmPatterns on SupportRequestResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SupportRequestResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SupportRequestResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SupportRequestResDm value)  $default,){
final _that = this;
switch (_that) {
case _SupportRequestResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SupportRequestResDm value)?  $default,){
final _that = this;
switch (_that) {
case _SupportRequestResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String itemId,  String requesterId,  String? requestId,  String type,  String description,  String status,  String? resolution,  String? itNote,  String? swappedToItemId,  DateTime? filedAt,  String? resolvedBy,  DateTime? resolvedAt,  bool autoClosed,  DateTime? createdAt,  DateTime? updatedAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SupportRequestResDm() when $default != null:
return $default(_that.id,_that.itemId,_that.requesterId,_that.requestId,_that.type,_that.description,_that.status,_that.resolution,_that.itNote,_that.swappedToItemId,_that.filedAt,_that.resolvedBy,_that.resolvedAt,_that.autoClosed,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String itemId,  String requesterId,  String? requestId,  String type,  String description,  String status,  String? resolution,  String? itNote,  String? swappedToItemId,  DateTime? filedAt,  String? resolvedBy,  DateTime? resolvedAt,  bool autoClosed,  DateTime? createdAt,  DateTime? updatedAt)  $default,) {final _that = this;
switch (_that) {
case _SupportRequestResDm():
return $default(_that.id,_that.itemId,_that.requesterId,_that.requestId,_that.type,_that.description,_that.status,_that.resolution,_that.itNote,_that.swappedToItemId,_that.filedAt,_that.resolvedBy,_that.resolvedAt,_that.autoClosed,_that.createdAt,_that.updatedAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String itemId,  String requesterId,  String? requestId,  String type,  String description,  String status,  String? resolution,  String? itNote,  String? swappedToItemId,  DateTime? filedAt,  String? resolvedBy,  DateTime? resolvedAt,  bool autoClosed,  DateTime? createdAt,  DateTime? updatedAt)?  $default,) {final _that = this;
switch (_that) {
case _SupportRequestResDm() when $default != null:
return $default(_that.id,_that.itemId,_that.requesterId,_that.requestId,_that.type,_that.description,_that.status,_that.resolution,_that.itNote,_that.swappedToItemId,_that.filedAt,_that.resolvedBy,_that.resolvedAt,_that.autoClosed,_that.createdAt,_that.updatedAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SupportRequestResDm implements SupportRequestResDm {
  const _SupportRequestResDm({this.id = '', this.itemId = '', this.requesterId = '', this.requestId, this.type = '', this.description = '', this.status = 'open', this.resolution, this.itNote, this.swappedToItemId, this.filedAt, this.resolvedBy, this.resolvedAt, this.autoClosed = false, this.createdAt, this.updatedAt});
  factory _SupportRequestResDm.fromJson(Map<String, dynamic> json) => _$SupportRequestResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String itemId;
@override@JsonKey() final  String requesterId;
@override final  String? requestId;
@override@JsonKey() final  String type;
@override@JsonKey() final  String description;
@override@JsonKey() final  String status;
@override final  String? resolution;
@override final  String? itNote;
@override final  String? swappedToItemId;
@override final  DateTime? filedAt;
@override final  String? resolvedBy;
@override final  DateTime? resolvedAt;
@override@JsonKey() final  bool autoClosed;
@override final  DateTime? createdAt;
@override final  DateTime? updatedAt;

/// Create a copy of SupportRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SupportRequestResDmCopyWith<_SupportRequestResDm> get copyWith => __$SupportRequestResDmCopyWithImpl<_SupportRequestResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SupportRequestResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SupportRequestResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.requesterId, requesterId) || other.requesterId == requesterId)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.type, type) || other.type == type)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.resolution, resolution) || other.resolution == resolution)&&(identical(other.itNote, itNote) || other.itNote == itNote)&&(identical(other.swappedToItemId, swappedToItemId) || other.swappedToItemId == swappedToItemId)&&(identical(other.filedAt, filedAt) || other.filedAt == filedAt)&&(identical(other.resolvedBy, resolvedBy) || other.resolvedBy == resolvedBy)&&(identical(other.resolvedAt, resolvedAt) || other.resolvedAt == resolvedAt)&&(identical(other.autoClosed, autoClosed) || other.autoClosed == autoClosed)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,requesterId,requestId,type,description,status,resolution,itNote,swappedToItemId,filedAt,resolvedBy,resolvedAt,autoClosed,createdAt,updatedAt);

@override
String toString() {
  return 'SupportRequestResDm(id: $id, itemId: $itemId, requesterId: $requesterId, requestId: $requestId, type: $type, description: $description, status: $status, resolution: $resolution, itNote: $itNote, swappedToItemId: $swappedToItemId, filedAt: $filedAt, resolvedBy: $resolvedBy, resolvedAt: $resolvedAt, autoClosed: $autoClosed, createdAt: $createdAt, updatedAt: $updatedAt)';
}


}

/// @nodoc
abstract mixin class _$SupportRequestResDmCopyWith<$Res> implements $SupportRequestResDmCopyWith<$Res> {
  factory _$SupportRequestResDmCopyWith(_SupportRequestResDm value, $Res Function(_SupportRequestResDm) _then) = __$SupportRequestResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String itemId, String requesterId, String? requestId, String type, String description, String status, String? resolution, String? itNote, String? swappedToItemId, DateTime? filedAt, String? resolvedBy, DateTime? resolvedAt, bool autoClosed, DateTime? createdAt, DateTime? updatedAt
});




}
/// @nodoc
class __$SupportRequestResDmCopyWithImpl<$Res>
    implements _$SupportRequestResDmCopyWith<$Res> {
  __$SupportRequestResDmCopyWithImpl(this._self, this._then);

  final _SupportRequestResDm _self;
  final $Res Function(_SupportRequestResDm) _then;

/// Create a copy of SupportRequestResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemId = null,Object? requesterId = null,Object? requestId = freezed,Object? type = null,Object? description = null,Object? status = null,Object? resolution = freezed,Object? itNote = freezed,Object? swappedToItemId = freezed,Object? filedAt = freezed,Object? resolvedBy = freezed,Object? resolvedAt = freezed,Object? autoClosed = null,Object? createdAt = freezed,Object? updatedAt = freezed,}) {
  return _then(_SupportRequestResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,requesterId: null == requesterId ? _self.requesterId : requesterId // ignore: cast_nullable_to_non_nullable
as String,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,resolution: freezed == resolution ? _self.resolution : resolution // ignore: cast_nullable_to_non_nullable
as String?,itNote: freezed == itNote ? _self.itNote : itNote // ignore: cast_nullable_to_non_nullable
as String?,swappedToItemId: freezed == swappedToItemId ? _self.swappedToItemId : swappedToItemId // ignore: cast_nullable_to_non_nullable
as String?,filedAt: freezed == filedAt ? _self.filedAt : filedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,resolvedBy: freezed == resolvedBy ? _self.resolvedBy : resolvedBy // ignore: cast_nullable_to_non_nullable
as String?,resolvedAt: freezed == resolvedAt ? _self.resolvedAt : resolvedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,autoClosed: null == autoClosed ? _self.autoClosed : autoClosed // ignore: cast_nullable_to_non_nullable
as bool,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
