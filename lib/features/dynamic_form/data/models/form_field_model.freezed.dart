// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_field_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormFieldModel {

 String get name; String get label; FormFieldType get type; FieldPropsModel get props;@JsonKey(name: 'required', defaultValue: false) bool get isRequired; FieldStyleModel? get style;
/// Create a copy of FormFieldModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormFieldModelCopyWith<FormFieldModel> get copyWith => _$FormFieldModelCopyWithImpl<FormFieldModel>(this as FormFieldModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormFieldModel&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.props, props) || other.props == props)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.style, style) || other.style == style));
}


@override
int get hashCode => Object.hash(runtimeType,name,label,type,props,isRequired,style);

@override
String toString() {
  return 'FormFieldModel(name: $name, label: $label, type: $type, props: $props, isRequired: $isRequired, style: $style)';
}


}

/// @nodoc
abstract mixin class $FormFieldModelCopyWith<$Res>  {
  factory $FormFieldModelCopyWith(FormFieldModel value, $Res Function(FormFieldModel) _then) = _$FormFieldModelCopyWithImpl;
@useResult
$Res call({
 String name, String label, FormFieldType type, FieldPropsModel props,@JsonKey(name: 'required', defaultValue: false) bool isRequired, FieldStyleModel? style
});


$FieldPropsModelCopyWith<$Res> get props;$FieldStyleModelCopyWith<$Res>? get style;

}
/// @nodoc
class _$FormFieldModelCopyWithImpl<$Res>
    implements $FormFieldModelCopyWith<$Res> {
  _$FormFieldModelCopyWithImpl(this._self, this._then);

  final FormFieldModel _self;
  final $Res Function(FormFieldModel) _then;

/// Create a copy of FormFieldModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? label = null,Object? type = null,Object? props = null,Object? isRequired = null,Object? style = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FormFieldType,props: null == props ? _self.props : props // ignore: cast_nullable_to_non_nullable
as FieldPropsModel,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as FieldStyleModel?,
  ));
}
/// Create a copy of FormFieldModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldPropsModelCopyWith<$Res> get props {
  
  return $FieldPropsModelCopyWith<$Res>(_self.props, (value) {
    return _then(_self.copyWith(props: value));
  });
}/// Create a copy of FormFieldModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldStyleModelCopyWith<$Res>? get style {
    if (_self.style == null) {
    return null;
  }

  return $FieldStyleModelCopyWith<$Res>(_self.style!, (value) {
    return _then(_self.copyWith(style: value));
  });
}
}


/// Adds pattern-matching-related methods to [FormFieldModel].
extension FormFieldModelPatterns on FormFieldModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormFieldModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormFieldModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormFieldModel value)  $default,){
final _that = this;
switch (_that) {
case _FormFieldModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormFieldModel value)?  $default,){
final _that = this;
switch (_that) {
case _FormFieldModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String label,  FormFieldType type,  FieldPropsModel props, @JsonKey(name: 'required', defaultValue: false)  bool isRequired,  FieldStyleModel? style)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormFieldModel() when $default != null:
return $default(_that.name,_that.label,_that.type,_that.props,_that.isRequired,_that.style);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String label,  FormFieldType type,  FieldPropsModel props, @JsonKey(name: 'required', defaultValue: false)  bool isRequired,  FieldStyleModel? style)  $default,) {final _that = this;
switch (_that) {
case _FormFieldModel():
return $default(_that.name,_that.label,_that.type,_that.props,_that.isRequired,_that.style);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String label,  FormFieldType type,  FieldPropsModel props, @JsonKey(name: 'required', defaultValue: false)  bool isRequired,  FieldStyleModel? style)?  $default,) {final _that = this;
switch (_that) {
case _FormFieldModel() when $default != null:
return $default(_that.name,_that.label,_that.type,_that.props,_that.isRequired,_that.style);case _:
  return null;

}
}

}

/// @nodoc


class _FormFieldModel extends FormFieldModel {
  const _FormFieldModel({required this.name, required this.label, required this.type, required this.props, @JsonKey(name: 'required', defaultValue: false) required this.isRequired, this.style}): super._();
  

@override final  String name;
@override final  String label;
@override final  FormFieldType type;
@override final  FieldPropsModel props;
@override@JsonKey(name: 'required', defaultValue: false) final  bool isRequired;
@override final  FieldStyleModel? style;

/// Create a copy of FormFieldModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormFieldModelCopyWith<_FormFieldModel> get copyWith => __$FormFieldModelCopyWithImpl<_FormFieldModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormFieldModel&&(identical(other.name, name) || other.name == name)&&(identical(other.label, label) || other.label == label)&&(identical(other.type, type) || other.type == type)&&(identical(other.props, props) || other.props == props)&&(identical(other.isRequired, isRequired) || other.isRequired == isRequired)&&(identical(other.style, style) || other.style == style));
}


@override
int get hashCode => Object.hash(runtimeType,name,label,type,props,isRequired,style);

@override
String toString() {
  return 'FormFieldModel(name: $name, label: $label, type: $type, props: $props, isRequired: $isRequired, style: $style)';
}


}

/// @nodoc
abstract mixin class _$FormFieldModelCopyWith<$Res> implements $FormFieldModelCopyWith<$Res> {
  factory _$FormFieldModelCopyWith(_FormFieldModel value, $Res Function(_FormFieldModel) _then) = __$FormFieldModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String label, FormFieldType type, FieldPropsModel props,@JsonKey(name: 'required', defaultValue: false) bool isRequired, FieldStyleModel? style
});


@override $FieldPropsModelCopyWith<$Res> get props;@override $FieldStyleModelCopyWith<$Res>? get style;

}
/// @nodoc
class __$FormFieldModelCopyWithImpl<$Res>
    implements _$FormFieldModelCopyWith<$Res> {
  __$FormFieldModelCopyWithImpl(this._self, this._then);

  final _FormFieldModel _self;
  final $Res Function(_FormFieldModel) _then;

/// Create a copy of FormFieldModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? label = null,Object? type = null,Object? props = null,Object? isRequired = null,Object? style = freezed,}) {
  return _then(_FormFieldModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as FormFieldType,props: null == props ? _self.props : props // ignore: cast_nullable_to_non_nullable
as FieldPropsModel,isRequired: null == isRequired ? _self.isRequired : isRequired // ignore: cast_nullable_to_non_nullable
as bool,style: freezed == style ? _self.style : style // ignore: cast_nullable_to_non_nullable
as FieldStyleModel?,
  ));
}

/// Create a copy of FormFieldModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldPropsModelCopyWith<$Res> get props {
  
  return $FieldPropsModelCopyWith<$Res>(_self.props, (value) {
    return _then(_self.copyWith(props: value));
  });
}/// Create a copy of FormFieldModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FieldStyleModelCopyWith<$Res>? get style {
    if (_self.style == null) {
    return null;
  }

  return $FieldStyleModelCopyWith<$Res>(_self.style!, (value) {
    return _then(_self.copyWith(style: value));
  });
}
}

// dart format on
