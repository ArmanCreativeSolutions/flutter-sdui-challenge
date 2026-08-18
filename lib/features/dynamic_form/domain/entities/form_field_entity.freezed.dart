// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_field_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormFieldEntity {

 String get name; String get label; FormFieldType get type; FieldPropsEntity get props; bool get required; FieldStyleEntity get style;
/// Create a copy of FormFieldEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormFieldEntityCopyWith<FormFieldEntity> get copyWith => _$FormFieldEntityCopyWithImpl<FormFieldEntity>(this as FormFieldEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormFieldEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.props, props) || other.props == props)&&(identical(other.required, required) || other.required == required)&&(identical(other.style, style) || other.style == style));
}


@override
int get hashCode => Object.hash(runtimeType,name,label,type,props,required,style);

@override
String toString() {
  return 'FormFieldEntity(name: $name, label: $label, type: $type, props: $props, required: $required, style: $style)';
}


}

/// @nodoc
abstract mixin class $FormFieldEntityCopyWith<$Res>  {
  factory $FormFieldEntityCopyWith(FormFieldEntity value, $Res Function(FormFieldEntity) _then) = _$FormFieldEntityCopyWithImpl;
@useResult
$Res call({
 String name, String label, FormFieldType type, FieldPropsEntity props, bool required, FieldStyleEntity style
});


$FieldPropsEntityCopyWith<$Res> get props;$FieldStyleEntityCopyWith<$Res> get style;

}
/// @nodoc
class _$FormFieldEntityCopyWithImpl<$Res>
    implements $FormFieldEntityCopyWith<$Res> {
  _$FormFieldEntityCopyWithImpl(this._self, this._then);

  final FormFieldEntity _self;
  final $Res Function(FormFieldEntity) _then;

/// Create a copy of FormFieldEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? label = null,Object? type = null,Object? props = null,Object? required = null,Object? style = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FormFieldType,props: null == props ? _self.props : props // ignore: cast_nullable_to_non_nullable
as FieldPropsEntity,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as FieldStyleEntity,
  ));
}
/// Create a copy of FormFieldEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldPropsEntityCopyWith<$Res> get props {
  
  return $FieldPropsEntityCopyWith<$Res>(_self.props, (value) {
    return _then(_self.copyWith(props: value));
  });
}/// Create a copy of FormFieldEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldStyleEntityCopyWith<$Res> get style {
  
  return $FieldStyleEntityCopyWith<$Res>(_self.style, (value) {
    return _then(_self.copyWith(style: value));
  });
}
}


/// Adds pattern-matching-related methods to [FormFieldEntity].
extension FormFieldEntityPatterns on FormFieldEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormFieldEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormFieldEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormFieldEntity value)  $default,){
final _that = this;
switch (_that) {
case _FormFieldEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormFieldEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FormFieldEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String label,  FormFieldType type,  FieldPropsEntity props,  bool required,  FieldStyleEntity style)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormFieldEntity() when $default != null:
return $default(_that.name,_that.label,_that.type,_that.props,_that.required,_that.style);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String label,  FormFieldType type,  FieldPropsEntity props,  bool required,  FieldStyleEntity style)  $default,) {final _that = this;
switch (_that) {
case _FormFieldEntity():
return $default(_that.name,_that.label,_that.type,_that.props,_that.required,_that.style);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String label,  FormFieldType type,  FieldPropsEntity props,  bool required,  FieldStyleEntity style)?  $default,) {final _that = this;
switch (_that) {
case _FormFieldEntity() when $default != null:
return $default(_that.name,_that.label,_that.type,_that.props,_that.required,_that.style);case _:
  return null;

}
}

}

/// @nodoc


class _FormFieldEntity implements FormFieldEntity {
  const _FormFieldEntity({required this.name, required this.label, required this.type, required this.props, this.required = false, this.style = FieldStyleEntity.empty});
  

@override final  String name;
@override final  String label;
@override final  FormFieldType type;
@override final  FieldPropsEntity props;
@override@JsonKey() final  bool required;
@override@JsonKey() final  FieldStyleEntity style;

/// Create a copy of FormFieldEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormFieldEntityCopyWith<_FormFieldEntity> get copyWith => __$FormFieldEntityCopyWithImpl<_FormFieldEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormFieldEntity&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.props, props) || other.props == props)&&(identical(other.required, required) || other.required == required)&&(identical(other.style, style) || other.style == style));
}


@override
int get hashCode => Object.hash(runtimeType,name,label,type,props,required,style);

@override
String toString() {
  return 'FormFieldEntity(name: $name, label: $label, type: $type, props: $props, required: $required, style: $style)';
}


}

/// @nodoc
abstract mixin class _$FormFieldEntityCopyWith<$Res> implements $FormFieldEntityCopyWith<$Res> {
  factory _$FormFieldEntityCopyWith(_FormFieldEntity value, $Res Function(_FormFieldEntity) _then) = __$FormFieldEntityCopyWithImpl;
@override @useResult
$Res call({
 String name, String label, FormFieldType type, FieldPropsEntity props, bool required, FieldStyleEntity style
});


@override $FieldPropsEntityCopyWith<$Res> get props;@override $FieldStyleEntityCopyWith<$Res> get style;

}
/// @nodoc
class __$FormFieldEntityCopyWithImpl<$Res>
    implements _$FormFieldEntityCopyWith<$Res> {
  __$FormFieldEntityCopyWithImpl(this._self, this._then);

  final _FormFieldEntity _self;
  final $Res Function(_FormFieldEntity) _then;

/// Create a copy of FormFieldEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? label = null,Object? type = null,Object? props = null,Object? required = null,Object? style = null,}) {
  return _then(_FormFieldEntity(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FormFieldType,props: null == props ? _self.props : props // ignore: cast_nullable_to_non_nullable
as FieldPropsEntity,required: null == required ? _self.required : required // ignore: cast_nullable_to_non_nullable
as bool,style: null == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as FieldStyleEntity,
  ));
}

/// Create a copy of FormFieldEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldPropsEntityCopyWith<$Res> get props {
  
  return $FieldPropsEntityCopyWith<$Res>(_self.props, (value) {
    return _then(_self.copyWith(props: value));
  });
}/// Create a copy of FormFieldEntity
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldStyleEntityCopyWith<$Res> get style {
  
  return $FieldStyleEntityCopyWith<$Res>(_self.style, (value) {
    return _then(_self.copyWith(style: value));
  });
}
}

// dart format on
