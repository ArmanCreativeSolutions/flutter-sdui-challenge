// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'field_props_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FieldPropsModel {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldPropsModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FieldPropsModel()';
}


}

/// @nodoc
class $FieldPropsModelCopyWith<$Res>  {
$FieldPropsModelCopyWith(FieldPropsModel _, $Res Function(FieldPropsModel) __);
}


/// Adds pattern-matching-related methods to [FieldPropsModel].
extension FieldPropsModelPatterns on FieldPropsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( TextFieldPropsModel value)?  text,TResult Function( SelectFieldPropsModel value)?  select,TResult Function( TextareaFieldPropsModel value)?  textarea,TResult Function( FileFieldPropsModel value)?  file,TResult Function( UnknownFieldPropsModel value)?  unknown,required TResult orElse(),}){
final _that = this;
switch (_that) {
case TextFieldPropsModel() when text != null:
return text(_that);case SelectFieldPropsModel() when select != null:
return select(_that);case TextareaFieldPropsModel() when textarea != null:
return textarea(_that);case FileFieldPropsModel() when file != null:
return file(_that);case UnknownFieldPropsModel() when unknown != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( TextFieldPropsModel value)  text,required TResult Function( SelectFieldPropsModel value)  select,required TResult Function( TextareaFieldPropsModel value)  textarea,required TResult Function( FileFieldPropsModel value)  file,required TResult Function( UnknownFieldPropsModel value)  unknown,}){
final _that = this;
switch (_that) {
case TextFieldPropsModel():
return text(_that);case SelectFieldPropsModel():
return select(_that);case TextareaFieldPropsModel():
return textarea(_that);case FileFieldPropsModel():
return file(_that);case UnknownFieldPropsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( TextFieldPropsModel value)?  text,TResult? Function( SelectFieldPropsModel value)?  select,TResult? Function( TextareaFieldPropsModel value)?  textarea,TResult? Function( FileFieldPropsModel value)?  file,TResult? Function( UnknownFieldPropsModel value)?  unknown,}){
final _that = this;
switch (_that) {
case TextFieldPropsModel() when text != null:
return text(_that);case SelectFieldPropsModel() when select != null:
return select(_that);case TextareaFieldPropsModel() when textarea != null:
return textarea(_that);case FileFieldPropsModel() when file != null:
return file(_that);case UnknownFieldPropsModel() when unknown != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( InputVariant variant,  String? placeholder,  String? color,  String? size,  int? minLength,  int? maxLength,  num? min,  num? max)?  text,TResult Function( List<FieldOptionModel> options)?  select,TResult Function( String? placeholder,  int? rows,  int? cols)?  textarea,TResult Function( String? accept,  String? maxSize,  bool multiple)?  file,TResult Function()?  unknown,required TResult orElse(),}) {final _that = this;
switch (_that) {
case TextFieldPropsModel() when text != null:
return text(_that.variant,_that.placeholder,_that.color,_that.size,_that.minLength,_that.maxLength,_that.min,_that.max);case SelectFieldPropsModel() when select != null:
return select(_that.options);case TextareaFieldPropsModel() when textarea != null:
return textarea(_that.placeholder,_that.rows,_that.cols);case FileFieldPropsModel() when file != null:
return file(_that.accept,_that.maxSize,_that.multiple);case UnknownFieldPropsModel() when unknown != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( InputVariant variant,  String? placeholder,  String? color,  String? size,  int? minLength,  int? maxLength,  num? min,  num? max)  text,required TResult Function( List<FieldOptionModel> options)  select,required TResult Function( String? placeholder,  int? rows,  int? cols)  textarea,required TResult Function( String? accept,  String? maxSize,  bool multiple)  file,required TResult Function()  unknown,}) {final _that = this;
switch (_that) {
case TextFieldPropsModel():
return text(_that.variant,_that.placeholder,_that.color,_that.size,_that.minLength,_that.maxLength,_that.min,_that.max);case SelectFieldPropsModel():
return select(_that.options);case TextareaFieldPropsModel():
return textarea(_that.placeholder,_that.rows,_that.cols);case FileFieldPropsModel():
return file(_that.accept,_that.maxSize,_that.multiple);case UnknownFieldPropsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( InputVariant variant,  String? placeholder,  String? color,  String? size,  int? minLength,  int? maxLength,  num? min,  num? max)?  text,TResult? Function( List<FieldOptionModel> options)?  select,TResult? Function( String? placeholder,  int? rows,  int? cols)?  textarea,TResult? Function( String? accept,  String? maxSize,  bool multiple)?  file,TResult? Function()?  unknown,}) {final _that = this;
switch (_that) {
case TextFieldPropsModel() when text != null:
return text(_that.variant,_that.placeholder,_that.color,_that.size,_that.minLength,_that.maxLength,_that.min,_that.max);case SelectFieldPropsModel() when select != null:
return select(_that.options);case TextareaFieldPropsModel() when textarea != null:
return textarea(_that.placeholder,_that.rows,_that.cols);case FileFieldPropsModel() when file != null:
return file(_that.accept,_that.maxSize,_that.multiple);case UnknownFieldPropsModel() when unknown != null:
return unknown();case _:
  return null;

}
}

}

/// @nodoc


class TextFieldPropsModel extends FieldPropsModel {
  const TextFieldPropsModel({required this.variant, this.placeholder, this.color, this.size, this.minLength, this.maxLength, this.min, this.max}): super._();
  

 final  InputVariant variant;
 final  String? placeholder;
 final  String? color;
 final  String? size;
 final  int? minLength;
 final  int? maxLength;
 final  num? min;
 final  num? max;

/// Create a copy of FieldPropsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextFieldPropsModelCopyWith<TextFieldPropsModel> get copyWith => _$TextFieldPropsModelCopyWithImpl<TextFieldPropsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextFieldPropsModel&&(identical(other.variant, variant) || other.variant == variant)&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&(identical(other.color, color) || other.color == color)&&(identical(other.size, size) || other.size == size)&&(identical(other.minLength, minLength) || other.minLength == minLength)&&(identical(other.maxLength, maxLength) || other.maxLength == maxLength)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}


@override
int get hashCode => Object.hash(runtimeType,variant,placeholder,color,size,minLength,maxLength,min,max);

@override
String toString() {
  return 'FieldPropsModel.text(variant: $variant, placeholder: $placeholder, color: $color, size: $size, minLength: $minLength, maxLength: $maxLength, min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $TextFieldPropsModelCopyWith<$Res> implements $FieldPropsModelCopyWith<$Res> {
  factory $TextFieldPropsModelCopyWith(TextFieldPropsModel value, $Res Function(TextFieldPropsModel) _then) = _$TextFieldPropsModelCopyWithImpl;
@useResult
$Res call({
 InputVariant variant, String? placeholder, String? color, String? size, int? minLength, int? maxLength, num? min, num? max
});




}
/// @nodoc
class _$TextFieldPropsModelCopyWithImpl<$Res>
    implements $TextFieldPropsModelCopyWith<$Res> {
  _$TextFieldPropsModelCopyWithImpl(this._self, this._then);

  final TextFieldPropsModel _self;
  final $Res Function(TextFieldPropsModel) _then;

/// Create a copy of FieldPropsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? variant = null,Object? placeholder = freezed,Object? color = freezed,Object? size = freezed,Object? minLength = freezed,Object? maxLength = freezed,Object? min = freezed,Object? max = freezed,}) {
  return _then(TextFieldPropsModel(
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


class SelectFieldPropsModel extends FieldPropsModel {
  const SelectFieldPropsModel({required final  List<FieldOptionModel> options}): _options = options,super._();
  

 final  List<FieldOptionModel> _options;
 List<FieldOptionModel> get options {
  if (_options is EqualUnmodifiableListView) return _options;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_options);
}


/// Create a copy of FieldPropsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SelectFieldPropsModelCopyWith<SelectFieldPropsModel> get copyWith => _$SelectFieldPropsModelCopyWithImpl<SelectFieldPropsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SelectFieldPropsModel&&const DeepCollectionEquality().equals(other._options, _options));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_options));

@override
String toString() {
  return 'FieldPropsModel.select(options: $options)';
}


}

/// @nodoc
abstract mixin class $SelectFieldPropsModelCopyWith<$Res> implements $FieldPropsModelCopyWith<$Res> {
  factory $SelectFieldPropsModelCopyWith(SelectFieldPropsModel value, $Res Function(SelectFieldPropsModel) _then) = _$SelectFieldPropsModelCopyWithImpl;
@useResult
$Res call({
 List<FieldOptionModel> options
});




}
/// @nodoc
class _$SelectFieldPropsModelCopyWithImpl<$Res>
    implements $SelectFieldPropsModelCopyWith<$Res> {
  _$SelectFieldPropsModelCopyWithImpl(this._self, this._then);

  final SelectFieldPropsModel _self;
  final $Res Function(SelectFieldPropsModel) _then;

/// Create a copy of FieldPropsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? options = null,}) {
  return _then(SelectFieldPropsModel(
options: null == options ? _self._options : options // ignore: cast_nullable_to_non_nullable
as List<FieldOptionModel>,
  ));
}


}

/// @nodoc


class TextareaFieldPropsModel extends FieldPropsModel {
  const TextareaFieldPropsModel({this.placeholder, this.rows, this.cols}): super._();
  

 final  String? placeholder;
 final  int? rows;
 final  int? cols;

/// Create a copy of FieldPropsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TextareaFieldPropsModelCopyWith<TextareaFieldPropsModel> get copyWith => _$TextareaFieldPropsModelCopyWithImpl<TextareaFieldPropsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TextareaFieldPropsModel&&(identical(other.placeholder, placeholder) || other.placeholder == placeholder)&&(identical(other.rows, rows) || other.rows == rows)&&(identical(other.cols, cols) || other.cols == cols));
}


@override
int get hashCode => Object.hash(runtimeType,placeholder,rows,cols);

@override
String toString() {
  return 'FieldPropsModel.textarea(placeholder: $placeholder, rows: $rows, cols: $cols)';
}


}

/// @nodoc
abstract mixin class $TextareaFieldPropsModelCopyWith<$Res> implements $FieldPropsModelCopyWith<$Res> {
  factory $TextareaFieldPropsModelCopyWith(TextareaFieldPropsModel value, $Res Function(TextareaFieldPropsModel) _then) = _$TextareaFieldPropsModelCopyWithImpl;
@useResult
$Res call({
 String? placeholder, int? rows, int? cols
});




}
/// @nodoc
class _$TextareaFieldPropsModelCopyWithImpl<$Res>
    implements $TextareaFieldPropsModelCopyWith<$Res> {
  _$TextareaFieldPropsModelCopyWithImpl(this._self, this._then);

  final TextareaFieldPropsModel _self;
  final $Res Function(TextareaFieldPropsModel) _then;

/// Create a copy of FieldPropsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? placeholder = freezed,Object? rows = freezed,Object? cols = freezed,}) {
  return _then(TextareaFieldPropsModel(
placeholder: freezed == placeholder ? _self.placeholder : placeholder // ignore: cast_nullable_to_non_nullable
as String?,rows: freezed == rows ? _self.rows : rows // ignore: cast_nullable_to_non_nullable
as int?,cols: freezed == cols ? _self.cols : cols // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

/// @nodoc


class FileFieldPropsModel extends FieldPropsModel {
  const FileFieldPropsModel({this.accept, this.maxSize, this.multiple = false}): super._();
  

 final  String? accept;
 final  String? maxSize;
@JsonKey() final  bool multiple;

/// Create a copy of FieldPropsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FileFieldPropsModelCopyWith<FileFieldPropsModel> get copyWith => _$FileFieldPropsModelCopyWithImpl<FileFieldPropsModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FileFieldPropsModel&&(identical(other.accept, accept) || other.accept == accept)&&(identical(other.maxSize, maxSize) || other.maxSize == maxSize)&&(identical(other.multiple, multiple) || other.multiple == multiple));
}


@override
int get hashCode => Object.hash(runtimeType,accept,maxSize,multiple);

@override
String toString() {
  return 'FieldPropsModel.file(accept: $accept, maxSize: $maxSize, multiple: $multiple)';
}


}

/// @nodoc
abstract mixin class $FileFieldPropsModelCopyWith<$Res> implements $FieldPropsModelCopyWith<$Res> {
  factory $FileFieldPropsModelCopyWith(FileFieldPropsModel value, $Res Function(FileFieldPropsModel) _then) = _$FileFieldPropsModelCopyWithImpl;
@useResult
$Res call({
 String? accept, String? maxSize, bool multiple
});




}
/// @nodoc
class _$FileFieldPropsModelCopyWithImpl<$Res>
    implements $FileFieldPropsModelCopyWith<$Res> {
  _$FileFieldPropsModelCopyWithImpl(this._self, this._then);

  final FileFieldPropsModel _self;
  final $Res Function(FileFieldPropsModel) _then;

/// Create a copy of FieldPropsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? accept = freezed,Object? maxSize = freezed,Object? multiple = null,}) {
  return _then(FileFieldPropsModel(
accept: freezed == accept ? _self.accept : accept // ignore: cast_nullable_to_non_nullable
as String?,maxSize: freezed == maxSize ? _self.maxSize : maxSize // ignore: cast_nullable_to_non_nullable
as String?,multiple: null == multiple ? _self.multiple : multiple // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class UnknownFieldPropsModel extends FieldPropsModel {
  const UnknownFieldPropsModel(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnknownFieldPropsModel);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FieldPropsModel.unknown()';
}


}




// dart format on
