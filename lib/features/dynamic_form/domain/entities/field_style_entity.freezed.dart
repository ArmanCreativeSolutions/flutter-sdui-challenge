// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_style_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FieldStyleEntity {

 String? get borderRadius; String? get margin; String? get padding; String? get color;
/// Create a copy of FieldStyleEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldStyleEntityCopyWith<FieldStyleEntity> get copyWith => _$FieldStyleEntityCopyWithImpl<FieldStyleEntity>(this as FieldStyleEntity, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldStyleEntity&&(identical(other.borderRadius, borderRadius) || other.borderRadius == borderRadius)&&(identical(other.margin, margin) || other.margin == margin)&&(identical(other.padding, padding) || other.padding == padding)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,borderRadius,margin,padding,color);

@override
String toString() {
  return 'FieldStyleEntity(borderRadius: $borderRadius, margin: $margin, padding: $padding, color: $color)';
}


}

/// @nodoc
abstract mixin class $FieldStyleEntityCopyWith<$Res>  {
  factory $FieldStyleEntityCopyWith(FieldStyleEntity value, $Res Function(FieldStyleEntity) _then) = _$FieldStyleEntityCopyWithImpl;
@useResult
$Res call({
 String? borderRadius, String? margin, String? padding, String? color
});




}
/// @nodoc
class _$FieldStyleEntityCopyWithImpl<$Res>
    implements $FieldStyleEntityCopyWith<$Res> {
  _$FieldStyleEntityCopyWithImpl(this._self, this._then);

  final FieldStyleEntity _self;
  final $Res Function(FieldStyleEntity) _then;

/// Create a copy of FieldStyleEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? borderRadius = freezed,Object? margin = freezed,Object? padding = freezed,Object? color = freezed,}) {
  return _then(_self.copyWith(
borderRadius: freezed == borderRadius ? _self.borderRadius : borderRadius // ignore: cast_nullable_to_non_nullable
as String?,margin: freezed == margin ? _self.margin : margin // ignore: cast_nullable_to_non_nullable
as String?,padding: freezed == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [FieldStyleEntity].
extension FieldStyleEntityPatterns on FieldStyleEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FieldStyleEntity value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FieldStyleEntity() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FieldStyleEntity value)  $default,){
final _that = this;
switch (_that) {
case _FieldStyleEntity():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FieldStyleEntity value)?  $default,){
final _that = this;
switch (_that) {
case _FieldStyleEntity() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? borderRadius,  String? margin,  String? padding,  String? color)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FieldStyleEntity() when $default != null:
return $default(_that.borderRadius,_that.margin,_that.padding,_that.color);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? borderRadius,  String? margin,  String? padding,  String? color)  $default,) {final _that = this;
switch (_that) {
case _FieldStyleEntity():
return $default(_that.borderRadius,_that.margin,_that.padding,_that.color);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? borderRadius,  String? margin,  String? padding,  String? color)?  $default,) {final _that = this;
switch (_that) {
case _FieldStyleEntity() when $default != null:
return $default(_that.borderRadius,_that.margin,_that.padding,_that.color);case _:
  return null;

}
}

}

/// @nodoc


class _FieldStyleEntity implements FieldStyleEntity {
  const _FieldStyleEntity({this.borderRadius, this.margin, this.padding, this.color});
  

@override final  String? borderRadius;
@override final  String? margin;
@override final  String? padding;
@override final  String? color;

/// Create a copy of FieldStyleEntity
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FieldStyleEntityCopyWith<_FieldStyleEntity> get copyWith => __$FieldStyleEntityCopyWithImpl<_FieldStyleEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FieldStyleEntity&&(identical(other.borderRadius, borderRadius) || other.borderRadius == borderRadius)&&(identical(other.margin, margin) || other.margin == margin)&&(identical(other.padding, padding) || other.padding == padding)&&(identical(other.color, color) || other.color == color));
}


@override
int get hashCode => Object.hash(runtimeType,borderRadius,margin,padding,color);

@override
String toString() {
  return 'FieldStyleEntity(borderRadius: $borderRadius, margin: $margin, padding: $padding, color: $color)';
}


}

/// @nodoc
abstract mixin class _$FieldStyleEntityCopyWith<$Res> implements $FieldStyleEntityCopyWith<$Res> {
  factory _$FieldStyleEntityCopyWith(_FieldStyleEntity value, $Res Function(_FieldStyleEntity) _then) = __$FieldStyleEntityCopyWithImpl;
@override @useResult
$Res call({
 String? borderRadius, String? margin, String? padding, String? color
});




}
/// @nodoc
class __$FieldStyleEntityCopyWithImpl<$Res>
    implements _$FieldStyleEntityCopyWith<$Res> {
  __$FieldStyleEntityCopyWithImpl(this._self, this._then);

  final _FieldStyleEntity _self;
  final $Res Function(_FieldStyleEntity) _then;

/// Create a copy of FieldStyleEntity
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? borderRadius = freezed,Object? margin = freezed,Object? padding = freezed,Object? color = freezed,}) {
  return _then(_FieldStyleEntity(
borderRadius: freezed == borderRadius ? _self.borderRadius : borderRadius // ignore: cast_nullable_to_non_nullable
as String?,margin: freezed == margin ? _self.margin : margin // ignore: cast_nullable_to_non_nullable
as String?,padding: freezed == padding ? _self.padding : padding // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
