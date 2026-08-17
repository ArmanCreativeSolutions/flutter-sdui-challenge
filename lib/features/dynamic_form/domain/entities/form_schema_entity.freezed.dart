// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_schema_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormSchemaEntity {

 List<FormFieldEntity> get fields;
/// Create a copy of FormSchemaEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormSchemaEntityCopyWith<FormSchemaEntity> get copyWith => _$FormSchemaEntityCopyWithImpl<FormSchemaEntity>(this as FormSchemaEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormSchemaEntity&&const DeepCollectionEquality().equals(other.fields, fields));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(fields));

@override
String toString() {
  return 'FormSchemaEntity(fields: $fields)';
}


}

/// @nodoc
abstract mixin class $FormSchemaEntityCopyWith<$Res>  {
  factory $FormSchemaEntityCopyWith(FormSchemaEntity value, $Res Function(FormSchemaEntity) _then) = _$FormSchemaEntityCopyWithImpl;
@useResult
$Res call({
 List<FormFieldEntity> fields
});




}
/// @nodoc
class _$FormSchemaEntityCopyWithImpl<$Res>
    implements $FormSchemaEntityCopyWith<$Res> {
  _$FormSchemaEntityCopyWithImpl(this._self, this._then);

  final FormSchemaEntity _self;
  final $Res Function(FormSchemaEntity) _then;

/// Create a copy of FormSchemaEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fields = null,}) {
  return _then(_self.copyWith(
fields: null == fields ? _self.fields : fields // ignore: cast_nullable_to_non_nullable
as List<FormFieldEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [FormSchemaEntity].
extension FormSchemaEntityPatterns on FormSchemaEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormSchemaEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormSchemaEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormSchemaEntity value)  $default,){
final _that = this;
switch (_that) {
case _FormSchemaEntity():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormSchemaEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FormSchemaEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<FormFieldEntity> fields)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormSchemaEntity() when $default != null:
return $default(_that.fields);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<FormFieldEntity> fields)  $default,) {final _that = this;
switch (_that) {
case _FormSchemaEntity():
return $default(_that.fields);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<FormFieldEntity> fields)?  $default,) {final _that = this;
switch (_that) {
case _FormSchemaEntity() when $default != null:
return $default(_that.fields);case _:
  return null;

}
}

}

/// @nodoc


class _FormSchemaEntity implements FormSchemaEntity {
  const _FormSchemaEntity({required final  List<FormFieldEntity> fields}): _fields = fields;
  

 final  List<FormFieldEntity> _fields;
@override List<FormFieldEntity> get fields {
  if (_fields is EqualUnmodifiableListView) return _fields;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_fields);
}


/// Create a copy of FormSchemaEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormSchemaEntityCopyWith<_FormSchemaEntity> get copyWith => __$FormSchemaEntityCopyWithImpl<_FormSchemaEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormSchemaEntity&&const DeepCollectionEquality().equals(other._fields, _fields));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_fields));

@override
String toString() {
  return 'FormSchemaEntity(fields: $fields)';
}


}

/// @nodoc
abstract mixin class _$FormSchemaEntityCopyWith<$Res> implements $FormSchemaEntityCopyWith<$Res> {
  factory _$FormSchemaEntityCopyWith(_FormSchemaEntity value, $Res Function(_FormSchemaEntity) _then) = __$FormSchemaEntityCopyWithImpl;
@override @useResult
$Res call({
 List<FormFieldEntity> fields
});




}
/// @nodoc
class __$FormSchemaEntityCopyWithImpl<$Res>
    implements _$FormSchemaEntityCopyWith<$Res> {
  __$FormSchemaEntityCopyWithImpl(this._self, this._then);

  final _FormSchemaEntity _self;
  final $Res Function(_FormSchemaEntity) _then;

/// Create a copy of FormSchemaEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fields = null,}) {
  return _then(_FormSchemaEntity(
fields: null == fields ? _self._fields : fields // ignore: cast_nullable_to_non_nullable
as List<FormFieldEntity>,
  ));
}


}

// dart format on
