// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FieldOptionModel {

 String get label; String get value;
/// Create a copy of FieldOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldOptionModelCopyWith<FieldOptionModel> get copyWith => _$FieldOptionModelCopyWithImpl<FieldOptionModel>(this as FieldOptionModel, _$identity);

  /// Serializes this FieldOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldOptionModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'FieldOptionModel(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class $FieldOptionModelCopyWith<$Res>  {
  factory $FieldOptionModelCopyWith(FieldOptionModel value, $Res Function(FieldOptionModel) _then) = _$FieldOptionModelCopyWithImpl;
@useResult
$Res call({
 String label, String value
});




}
/// @nodoc
class _$FieldOptionModelCopyWithImpl<$Res>
    implements $FieldOptionModelCopyWith<$Res> {
  _$FieldOptionModelCopyWithImpl(this._self, this._then);

  final FieldOptionModel _self;
  final $Res Function(FieldOptionModel) _then;

/// Create a copy of FieldOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? label = null,Object? value = null,}) {
  return _then(_self.copyWith(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldOptionModel].
extension FieldOptionModelPatterns on FieldOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _FieldOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _FieldOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String label,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldOptionModel() when $default != null:
return $default(_that.label,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String label,  String value)  $default,) {final _that = this;
switch (_that) {
case _FieldOptionModel():
return $default(_that.label,_that.value);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String label,  String value)?  $default,) {final _that = this;
switch (_that) {
case _FieldOptionModel() when $default != null:
return $default(_that.label,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FieldOptionModel extends FieldOptionModel {
  const _FieldOptionModel({required this.label, required this.value}): super._();
  factory _FieldOptionModel.fromJson(Map<String, dynamic> json) => _$FieldOptionModelFromJson(json);

@override final  String label;
@override final  String value;

/// Create a copy of FieldOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldOptionModelCopyWith<_FieldOptionModel> get copyWith => __$FieldOptionModelCopyWithImpl<_FieldOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FieldOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldOptionModel&&(identical(other.label, label) || other.label == label)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,label,value);

@override
String toString() {
  return 'FieldOptionModel(label: $label, value: $value)';
}


}

/// @nodoc
abstract mixin class _$FieldOptionModelCopyWith<$Res> implements $FieldOptionModelCopyWith<$Res> {
  factory _$FieldOptionModelCopyWith(_FieldOptionModel value, $Res Function(_FieldOptionModel) _then) = __$FieldOptionModelCopyWithImpl;
@override @useResult
$Res call({
 String label, String value
});




}
/// @nodoc
class __$FieldOptionModelCopyWithImpl<$Res>
    implements _$FieldOptionModelCopyWith<$Res> {
  __$FieldOptionModelCopyWithImpl(this._self, this._then);

  final _FieldOptionModel _self;
  final $Res Function(_FieldOptionModel) _then;

/// Create a copy of FieldOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? label = null,Object? value = null,}) {
  return _then(_FieldOptionModel(
label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
