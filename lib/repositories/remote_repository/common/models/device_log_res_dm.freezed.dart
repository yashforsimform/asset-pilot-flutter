// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_log_res_dm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DeviceLogResDm {

 String get id; String get itemId; String get eventType; String? get actorId; String get actorRole; String? get requestId; String? get supportRequestId; String? get extensionRequestId; String? get handoverRequestId; String? get fromValue; String? get toValue; String? get note; Map<String, dynamic> get metadata; bool get isMilestone; DateTime? get occurredAt;
/// Create a copy of DeviceLogResDm
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeviceLogResDmCopyWith<DeviceLogResDm> get copyWith => _$DeviceLogResDmCopyWithImpl<DeviceLogResDm>(this as DeviceLogResDm, _$identity);

  /// Serializes this DeviceLogResDm to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeviceLogResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.supportRequestId, supportRequestId) || other.supportRequestId == supportRequestId)&&(identical(other.extensionRequestId, extensionRequestId) || other.extensionRequestId == extensionRequestId)&&(identical(other.handoverRequestId, handoverRequestId) || other.handoverRequestId == handoverRequestId)&&(identical(other.fromValue, fromValue) || other.fromValue == fromValue)&&(identical(other.toValue, toValue) || other.toValue == toValue)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other.metadata, metadata)&&(identical(other.isMilestone, isMilestone) || other.isMilestone == isMilestone)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,eventType,actorId,actorRole,requestId,supportRequestId,extensionRequestId,handoverRequestId,fromValue,toValue,note,const DeepCollectionEquality().hash(metadata),isMilestone,occurredAt);

@override
String toString() {
  return 'DeviceLogResDm(id: $id, itemId: $itemId, eventType: $eventType, actorId: $actorId, actorRole: $actorRole, requestId: $requestId, supportRequestId: $supportRequestId, extensionRequestId: $extensionRequestId, handoverRequestId: $handoverRequestId, fromValue: $fromValue, toValue: $toValue, note: $note, metadata: $metadata, isMilestone: $isMilestone, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class $DeviceLogResDmCopyWith<$Res>  {
  factory $DeviceLogResDmCopyWith(DeviceLogResDm value, $Res Function(DeviceLogResDm) _then) = _$DeviceLogResDmCopyWithImpl;
@useResult
$Res call({
 String id, String itemId, String eventType, String? actorId, String actorRole, String? requestId, String? supportRequestId, String? extensionRequestId, String? handoverRequestId, String? fromValue, String? toValue, String? note, Map<String, dynamic> metadata, bool isMilestone, DateTime? occurredAt
});




}
/// @nodoc
class _$DeviceLogResDmCopyWithImpl<$Res>
    implements $DeviceLogResDmCopyWith<$Res> {
  _$DeviceLogResDmCopyWithImpl(this._self, this._then);

  final DeviceLogResDm _self;
  final $Res Function(DeviceLogResDm) _then;

/// Create a copy of DeviceLogResDm
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemId = null,Object? eventType = null,Object? actorId = freezed,Object? actorRole = null,Object? requestId = freezed,Object? supportRequestId = freezed,Object? extensionRequestId = freezed,Object? handoverRequestId = freezed,Object? fromValue = freezed,Object? toValue = freezed,Object? note = freezed,Object? metadata = null,Object? isMilestone = null,Object? occurredAt = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,actorRole: null == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as String,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,supportRequestId: freezed == supportRequestId ? _self.supportRequestId : supportRequestId // ignore: cast_nullable_to_non_nullable
as String?,extensionRequestId: freezed == extensionRequestId ? _self.extensionRequestId : extensionRequestId // ignore: cast_nullable_to_non_nullable
as String?,handoverRequestId: freezed == handoverRequestId ? _self.handoverRequestId : handoverRequestId // ignore: cast_nullable_to_non_nullable
as String?,fromValue: freezed == fromValue ? _self.fromValue : fromValue // ignore: cast_nullable_to_non_nullable
as String?,toValue: freezed == toValue ? _self.toValue : toValue // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self.metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,isMilestone: null == isMilestone ? _self.isMilestone : isMilestone // ignore: cast_nullable_to_non_nullable
as bool,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}

}


/// Adds pattern-matching-related methods to [DeviceLogResDm].
extension DeviceLogResDmPatterns on DeviceLogResDm {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DeviceLogResDm value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DeviceLogResDm() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DeviceLogResDm value)  $default,){
final _that = this;
switch (_that) {
case _DeviceLogResDm():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DeviceLogResDm value)?  $default,){
final _that = this;
switch (_that) {
case _DeviceLogResDm() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String itemId,  String eventType,  String? actorId,  String actorRole,  String? requestId,  String? supportRequestId,  String? extensionRequestId,  String? handoverRequestId,  String? fromValue,  String? toValue,  String? note,  Map<String, dynamic> metadata,  bool isMilestone,  DateTime? occurredAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DeviceLogResDm() when $default != null:
return $default(_that.id,_that.itemId,_that.eventType,_that.actorId,_that.actorRole,_that.requestId,_that.supportRequestId,_that.extensionRequestId,_that.handoverRequestId,_that.fromValue,_that.toValue,_that.note,_that.metadata,_that.isMilestone,_that.occurredAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String itemId,  String eventType,  String? actorId,  String actorRole,  String? requestId,  String? supportRequestId,  String? extensionRequestId,  String? handoverRequestId,  String? fromValue,  String? toValue,  String? note,  Map<String, dynamic> metadata,  bool isMilestone,  DateTime? occurredAt)  $default,) {final _that = this;
switch (_that) {
case _DeviceLogResDm():
return $default(_that.id,_that.itemId,_that.eventType,_that.actorId,_that.actorRole,_that.requestId,_that.supportRequestId,_that.extensionRequestId,_that.handoverRequestId,_that.fromValue,_that.toValue,_that.note,_that.metadata,_that.isMilestone,_that.occurredAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String itemId,  String eventType,  String? actorId,  String actorRole,  String? requestId,  String? supportRequestId,  String? extensionRequestId,  String? handoverRequestId,  String? fromValue,  String? toValue,  String? note,  Map<String, dynamic> metadata,  bool isMilestone,  DateTime? occurredAt)?  $default,) {final _that = this;
switch (_that) {
case _DeviceLogResDm() when $default != null:
return $default(_that.id,_that.itemId,_that.eventType,_that.actorId,_that.actorRole,_that.requestId,_that.supportRequestId,_that.extensionRequestId,_that.handoverRequestId,_that.fromValue,_that.toValue,_that.note,_that.metadata,_that.isMilestone,_that.occurredAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DeviceLogResDm implements DeviceLogResDm {
  const _DeviceLogResDm({this.id = '', this.itemId = '', this.eventType = '', this.actorId, this.actorRole = 'system', this.requestId, this.supportRequestId, this.extensionRequestId, this.handoverRequestId, this.fromValue, this.toValue, this.note, final  Map<String, dynamic> metadata = const <String, dynamic>{}, this.isMilestone = false, this.occurredAt}): _metadata = metadata;
  factory _DeviceLogResDm.fromJson(Map<String, dynamic> json) => _$DeviceLogResDmFromJson(json);

@override@JsonKey() final  String id;
@override@JsonKey() final  String itemId;
@override@JsonKey() final  String eventType;
@override final  String? actorId;
@override@JsonKey() final  String actorRole;
@override final  String? requestId;
@override final  String? supportRequestId;
@override final  String? extensionRequestId;
@override final  String? handoverRequestId;
@override final  String? fromValue;
@override final  String? toValue;
@override final  String? note;
 final  Map<String, dynamic> _metadata;
@override@JsonKey() Map<String, dynamic> get metadata {
  if (_metadata is EqualUnmodifiableMapView) return _metadata;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_metadata);
}

@override@JsonKey() final  bool isMilestone;
@override final  DateTime? occurredAt;

/// Create a copy of DeviceLogResDm
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DeviceLogResDmCopyWith<_DeviceLogResDm> get copyWith => __$DeviceLogResDmCopyWithImpl<_DeviceLogResDm>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DeviceLogResDmToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DeviceLogResDm&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.actorId, actorId) || other.actorId == actorId)&&(identical(other.actorRole, actorRole) || other.actorRole == actorRole)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.supportRequestId, supportRequestId) || other.supportRequestId == supportRequestId)&&(identical(other.extensionRequestId, extensionRequestId) || other.extensionRequestId == extensionRequestId)&&(identical(other.handoverRequestId, handoverRequestId) || other.handoverRequestId == handoverRequestId)&&(identical(other.fromValue, fromValue) || other.fromValue == fromValue)&&(identical(other.toValue, toValue) || other.toValue == toValue)&&(identical(other.note, note) || other.note == note)&&const DeepCollectionEquality().equals(other._metadata, _metadata)&&(identical(other.isMilestone, isMilestone) || other.isMilestone == isMilestone)&&(identical(other.occurredAt, occurredAt) || other.occurredAt == occurredAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,eventType,actorId,actorRole,requestId,supportRequestId,extensionRequestId,handoverRequestId,fromValue,toValue,note,const DeepCollectionEquality().hash(_metadata),isMilestone,occurredAt);

@override
String toString() {
  return 'DeviceLogResDm(id: $id, itemId: $itemId, eventType: $eventType, actorId: $actorId, actorRole: $actorRole, requestId: $requestId, supportRequestId: $supportRequestId, extensionRequestId: $extensionRequestId, handoverRequestId: $handoverRequestId, fromValue: $fromValue, toValue: $toValue, note: $note, metadata: $metadata, isMilestone: $isMilestone, occurredAt: $occurredAt)';
}


}

/// @nodoc
abstract mixin class _$DeviceLogResDmCopyWith<$Res> implements $DeviceLogResDmCopyWith<$Res> {
  factory _$DeviceLogResDmCopyWith(_DeviceLogResDm value, $Res Function(_DeviceLogResDm) _then) = __$DeviceLogResDmCopyWithImpl;
@override @useResult
$Res call({
 String id, String itemId, String eventType, String? actorId, String actorRole, String? requestId, String? supportRequestId, String? extensionRequestId, String? handoverRequestId, String? fromValue, String? toValue, String? note, Map<String, dynamic> metadata, bool isMilestone, DateTime? occurredAt
});




}
/// @nodoc
class __$DeviceLogResDmCopyWithImpl<$Res>
    implements _$DeviceLogResDmCopyWith<$Res> {
  __$DeviceLogResDmCopyWithImpl(this._self, this._then);

  final _DeviceLogResDm _self;
  final $Res Function(_DeviceLogResDm) _then;

/// Create a copy of DeviceLogResDm
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemId = null,Object? eventType = null,Object? actorId = freezed,Object? actorRole = null,Object? requestId = freezed,Object? supportRequestId = freezed,Object? extensionRequestId = freezed,Object? handoverRequestId = freezed,Object? fromValue = freezed,Object? toValue = freezed,Object? note = freezed,Object? metadata = null,Object? isMilestone = null,Object? occurredAt = freezed,}) {
  return _then(_DeviceLogResDm(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,itemId: null == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as String,eventType: null == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String,actorId: freezed == actorId ? _self.actorId : actorId // ignore: cast_nullable_to_non_nullable
as String?,actorRole: null == actorRole ? _self.actorRole : actorRole // ignore: cast_nullable_to_non_nullable
as String,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,supportRequestId: freezed == supportRequestId ? _self.supportRequestId : supportRequestId // ignore: cast_nullable_to_non_nullable
as String?,extensionRequestId: freezed == extensionRequestId ? _self.extensionRequestId : extensionRequestId // ignore: cast_nullable_to_non_nullable
as String?,handoverRequestId: freezed == handoverRequestId ? _self.handoverRequestId : handoverRequestId // ignore: cast_nullable_to_non_nullable
as String?,fromValue: freezed == fromValue ? _self.fromValue : fromValue // ignore: cast_nullable_to_non_nullable
as String?,toValue: freezed == toValue ? _self.toValue : toValue // ignore: cast_nullable_to_non_nullable
as String?,note: freezed == note ? _self.note : note // ignore: cast_nullable_to_non_nullable
as String?,metadata: null == metadata ? _self._metadata : metadata // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,isMilestone: null == isMilestone ? _self.isMilestone : isMilestone // ignore: cast_nullable_to_non_nullable
as bool,occurredAt: freezed == occurredAt ? _self.occurredAt : occurredAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

// dart format on
