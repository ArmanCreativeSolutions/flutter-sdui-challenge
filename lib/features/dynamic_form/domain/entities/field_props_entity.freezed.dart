// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_props_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FieldPropsEntity {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldPropsEntity);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FieldPropsEntity()';
}


}

/// @nodoc
class $FieldPropsEntityCopyWith<$Res>  {
$FieldPropsEntityCopyWith(FieldPropsEntity _, $Res Function(FieldPropsEntity) __);
}


/// Adds pattern-matching-related methods to [FieldPropsEntity].
extension FieldPropsEntityPatterns on FieldPropsEntity {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TextFieldPropsEntity value)?  text,TResult Function( SelectFieldPropsEntity value)?  select,TResult Function( TextareaFieldPropsEntity value)?  textarea,TResult Function( FileFieldPropsEntity value)?  file,TResult Function( UnknownFieldPropsEntity value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TextFieldPropsEntity() when text != null:
return text(_that);case SelectFieldPropsEntity() when select != null:
return select(_that);case TextareaFieldPropsEntity() when textarea != null:
return textarea(_that);case FileFieldPropsEntity() when file != null:
return file(_that);case UnknownFieldPropsEntity() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TextFieldPropsEntity value)  text,required TResult Function( SelectFieldPropsEntity value)  select,required TResult Function( TextareaFieldPropsEntity value)  textarea,required TResult Function( FileFieldPropsEntity value)  file,required TResult Function( UnknownFieldPropsEntity value)  unknown,}){
final _that = this;
switch (_that) {
case TextFieldPropsEntity():
return text(_that);case SelectFieldPropsEntity():
return select(_that);case TextareaFieldPropsEntity():
return textarea(_that);case FileFieldPropsEntity():
return file(_that);case UnknownFieldPropsEntity():
return unknown(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TextFieldPropsEntity value)?  text,TResult? Function( SelectFieldPropsEntity value)?  select,TResult? Function( TextareaFieldPropsEntity value)?  textarea,TResult? Function( FileFieldPropsEntity value)?  file,TResult? Function( UnknownFieldPropsEntity value)?  unknown,}){
final _that = this;
switch (_that) {
case TextFieldPropsEntity() when text != null:
return text(_that);case SelectFieldPropsEntity() when select != null:
return select(_that);case TextareaFieldPropsEntity() when textarea != null:
return textarea(_that);case FileFieldPropsEntity() when file != null:
return file(_that);case UnknownFieldPropsEntity() when unknown != null:
return unknown(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( InputVariant variant,  String? placeholder,  String? color,  String? size,  int? minLength,  int? maxLength,  num? min,  num? max)?  text,TResult Function( List<FieldOptionEntity> options)?  select,TResult Function( String? placeholder,  int? rows,  int? cols)?  textarea,TResult Function( String? accept,  String? maxSize,  bool multiple)?  file,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TextFieldPropsEntity() when text != null:
return text(_that.variant,_that.placeholder,_that.color,_that.size,_that.minLength,_that.maxLength,_that.min,_that.max);case SelectFieldPropsEntity() when select != null:
return select(_that.options);case TextareaFieldPropsEntity() when textarea != null:
return textarea(_that.placeholder,_that.rows,_that.cols);case FileFieldPropsEntity() when file != null:
return file(_that.accept,_that.maxSize,_that.multiple);case UnknownFieldPropsEntity() when unknown != null:
return unknown();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( InputVariant variant,  String? placeholder,  String? color,  String? size,  int? minLength,  int? maxLength,  num? min,  num? max)  text,required TResult Function( List<FieldOptionEntity> options)  select,required TResult Function( String? placeholder,  int? rows,  int? cols)  textarea,required TResult Function( String? accept,  String? maxSize,  bool multiple)  file,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case TextFieldPropsEntity():
return text(_that.variant,_that.placeholder,_that.color,_that.size,_that.minLength,_that.maxLength,_that.min,_that.max);case SelectFieldPropsEntity():
return select(_that.options);case TextareaFieldPropsEntity():
return textarea(_that.placeholder,_that.rows,_that.cols);case FileFieldPropsEntity():
return file(_that.accept,_that.maxSize,_that.multiple);case UnknownFieldPropsEntity():
return unknown();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( InputVariant variant,  String? placeholder,  String? color,  String? size,  int? minLength,  int? maxLength,  num? min,  num? max)?  text,TResult? Function( List<FieldOptionEntity> options)?  select,TResult? Function( String? placeholder,  int? rows,  int? cols)?  textarea,TResult? Function( String? accept,  String? maxSize,  bool multiple)?  file,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case TextFieldPropsEntity() when text != null:
return text(_that.variant,_that.placeholder,_that.color,_that.size,_that.minLength,_that.maxLength,_that.min,_that.max);case SelectFieldPropsEntity() when select != null:
return select(_that.options);case TextareaFieldPropsEntity() when textarea != null:
return textarea(_that.placeholder,_that.rows,_that.cols);case FileFieldPropsEntity() when file != null:
return file(_that.accept,_that.maxSize,_that.multiple);case UnknownFieldPropsEntity() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc


class TextFieldPropsEntity implements FieldPropsEntity {
  const TextFieldPropsEntity({required this.variant, this.placeholder, this.color, this.size, this.minLength, this.maxLength, this.min, this.max});
  

 final  InputVariant variant;
 final  String? placeholder;
 final  String? color;
 final  String? size;
 final  int? minLength;
 final  int? maxLength;
 final  num? min;
 final  num? max;

/// Create a copy of FieldPropsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextFieldPropsEntityCopyWith<TextFieldPropsEntity> get copyWith => _$TextFieldPropsEntityCopyWithImpl<TextFieldPropsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextFieldPropsEntity&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&(identical(other.color, color) || other.color == color)&&(identical(other.size, size) || other.size == size)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,variant,placeholder,color,size,minLength,maxLength,min,max);

@override
String toString() {
  return 'FieldPropsEntity.text(variant: $variant, placeholder: $placeholder, color: $color, size: $size, minLength: $minLength, maxLength: $maxLength, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $TextFieldPropsEntityCopyWith<$Res> implements $FieldPropsEntityCopyWith<$Res> {
  factory $TextFieldPropsEntityCopyWith(TextFieldPropsEntity value, $Res Function(TextFieldPropsEntity) _then) = _$TextFieldPropsEntityCopyWithImpl;
@useResult
$Res call({
 InputVariant variant, String? placeholder, String? color, String? size, int? minLength, int? maxLength, num? min, num? max
});




}
/// @nodoc
class _$TextFieldPropsEntityCopyWithImpl<$Res>
    implements $TextFieldPropsEntityCopyWith<$Res> {
  _$TextFieldPropsEntityCopyWithImpl(this._self, this._then);

  final TextFieldPropsEntity _self;
  final $Res Function(TextFieldPropsEntity) _then;

/// Create a copy of FieldPropsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? variant = null,Object? placeholder = freezed,Object? color = freezed,Object? size = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? min = freezed,Object? max = freezed,}) {
  return _then(TextFieldPropsEntity(
variant: null == variant ? _self.variant : variant // ignore: cast_nullable_to_non_nullable
as InputVariant,placeholder: freezed == placeholder ? _self.placeholder : placeholder // ignore: cast_nullable_to_non_nullable
as String?,color: freezed == color ? _self.color : color // ignore: cast_nullable_to_non_nullable
as String?,size: freezed == size ? _self.size : size // ignore: cast_nullable_to_non_nullable
as String?,minLength: freezed == minLength ? _self.minLength : minLength // ignore: cast_nullable_to_non_nullable
as int?,maxLength: freezed == maxLength ? _self.maxLength : maxLength // ignore: cast_nullable_to_non_nullable
as int?,min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as num?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as num?,
  ));
}


}

/// @nodoc


class SelectFieldPropsEntity implements FieldPropsEntity {
  const SelectFieldPropsEntity({required final  List<FieldOptionEntity> options}): _options = options;
  

 final  List<FieldOptionEntity> _options;
 List<FieldOptionEntity> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of FieldPropsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectFieldPropsEntityCopyWith<SelectFieldPropsEntity> get copyWith => _$SelectFieldPropsEntityCopyWithImpl<SelectFieldPropsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectFieldPropsEntity&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'FieldPropsEntity.select(options: $options)';
}


}

/// @nodoc
abstract mixin class $SelectFieldPropsEntityCopyWith<$Res> implements $FieldPropsEntityCopyWith<$Res> {
  factory $SelectFieldPropsEntityCopyWith(SelectFieldPropsEntity value, $Res Function(SelectFieldPropsEntity) _then) = _$SelectFieldPropsEntityCopyWithImpl;
@useResult
$Res call({
 List<FieldOptionEntity> options
});




}
/// @nodoc
class _$SelectFieldPropsEntityCopyWithImpl<$Res>
    implements $SelectFieldPropsEntityCopyWith<$Res> {
  _$SelectFieldPropsEntityCopyWithImpl(this._self, this._then);

  final SelectFieldPropsEntity _self;
  final $Res Function(SelectFieldPropsEntity) _then;

/// Create a copy of FieldPropsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? options = null,}) {
  return _then(SelectFieldPropsEntity(
options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<FieldOptionEntity>,
  ));
}


}

/// @nodoc


class TextareaFieldPropsEntity implements FieldPropsEntity {
  const TextareaFieldPropsEntity({this.placeholder, this.rows, this.cols});
  

 final  String? placeholder;
 final  int? rows;
 final  int? cols;

/// Create a copy of FieldPropsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextareaFieldPropsEntityCopyWith<TextareaFieldPropsEntity> get copyWith => _$TextareaFieldPropsEntityCopyWithImpl<TextareaFieldPropsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextareaFieldPropsEntity&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&(identical(other.rows, rows) || other.rows == rows)&&(identical(other.cols, cols) || other.cols == cols));
}


@override
int get hashCode => Object.hash(runtimeType,placeholder,rows,cols);

@override
String toString() {
  return 'FieldPropsEntity.textarea(placeholder: $placeholder, rows: $rows, cols: $cols)';
}


}

/// @nodoc
abstract mixin class $TextareaFieldPropsEntityCopyWith<$Res> implements $FieldPropsEntityCopyWith<$Res> {
  factory $TextareaFieldPropsEntityCopyWith(TextareaFieldPropsEntity value, $Res Function(TextareaFieldPropsEntity) _then) = _$TextareaFieldPropsEntityCopyWithImpl;
@useResult
$Res call({
 String? placeholder, int? rows, int? cols
});




}
/// @nodoc
class _$TextareaFieldPropsEntityCopyWithImpl<$Res>
    implements $TextareaFieldPropsEntityCopyWith<$Res> {
  _$TextareaFieldPropsEntityCopyWithImpl(this._self, this._then);

  final TextareaFieldPropsEntity _self;
  final $Res Function(TextareaFieldPropsEntity) _then;

/// Create a copy of FieldPropsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? placeholder = freezed,Object? rows = freezed,Object? cols = freezed,}) {
  return _then(TextareaFieldPropsEntity(
placeholder: freezed == placeholder ? _self.placeholder : placeholder // ignore: cast_nullable_to_non_nullable
as String?,rows: freezed == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as int?,cols: freezed == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class FileFieldPropsEntity implements FieldPropsEntity {
  const FileFieldPropsEntity({this.accept, this.maxSize, this.multiple = false});
  

 final  String? accept;
 final  String? maxSize;
@JsonKey() final  bool multiple;

/// Create a copy of FieldPropsEntity
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileFieldPropsEntityCopyWith<FileFieldPropsEntity> get copyWith => _$FileFieldPropsEntityCopyWithImpl<FileFieldPropsEntity>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileFieldPropsEntity&&(identical(other.accept, accept) || other.accept == accept)&&(identical(other.maxSize, maxSize) || other.maxSize == maxSize)&&(identical(other.multiple, multiple) || other.multiple == multiple));
}


@override
int get hashCode => Object.hash(runtimeType,accept,maxSize,multiple);

@override
String toString() {
  return 'FieldPropsEntity.file(accept: $accept, maxSize: $maxSize, multiple: $multiple)';
}


}

/// @nodoc
abstract mixin class $FileFieldPropsEntityCopyWith<$Res> implements $FieldPropsEntityCopyWith<$Res> {
  factory $FileFieldPropsEntityCopyWith(FileFieldPropsEntity value, $Res Function(FileFieldPropsEntity) _then) = _$FileFieldPropsEntityCopyWithImpl;
@useResult
$Res call({
 String? accept, String? maxSize, bool multiple
});




}
/// @nodoc
class _$FileFieldPropsEntityCopyWithImpl<$Res>
    implements $FileFieldPropsEntityCopyWith<$Res> {
  _$FileFieldPropsEntityCopyWithImpl(this._self, this._then);

  final FileFieldPropsEntity _self;
  final $Res Function(FileFieldPropsEntity) _then;

/// Create a copy of FieldPropsEntity
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accept = freezed,Object? maxSize = freezed,Object? multiple = null,}) {
  return _then(FileFieldPropsEntity(
accept: freezed == accept ? _self.accept : accept // ignore: cast_nullable_to_non_nullable
as String?,maxSize: freezed == maxSize ? _self.maxSize : maxSize // ignore: cast_nullable_to_non_nullable
as String?,multiple: null == multiple ? _self.multiple : multiple // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class UnknownFieldPropsEntity implements FieldPropsEntity {
  const UnknownFieldPropsEntity();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFieldPropsEntity);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FieldPropsEntity.unknown()';
}


}




// dart format on
