// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormViewState {

 FormStatus get status; FormSchemaEntity? get schema; Map<String, dynamic> get values; Map<String, List<PickedFileInfo>> get fileValues; Map<String, String> get fieldErrors; String? get schemaErrorMessage; String? get submitErrorMessage;
/// Create a copy of FormViewState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FormViewStateCopyWith<FormViewState> get copyWith => _$FormViewStateCopyWithImpl<FormViewState>(this as FormViewState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormViewState&&(identical(other.status, status) || other.status == status)&&(identical(other.schema, schema) || other.schema == schema)&&const DeepCollectionEquality().equals(other.values, values)&&const DeepCollectionEquality().equals(other.fileValues, fileValues)&&const DeepCollectionEquality().equals(other.fieldErrors, fieldErrors)&&(identical(other.schemaErrorMessage, schemaErrorMessage) || other.schemaErrorMessage == schemaErrorMessage)&&(identical(other.submitErrorMessage, submitErrorMessage) || other.submitErrorMessage == submitErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,schema,const DeepCollectionEquality().hash(values),const DeepCollectionEquality().hash(fileValues),const DeepCollectionEquality().hash(fieldErrors),schemaErrorMessage,submitErrorMessage);

@override
String toString() {
  return 'FormViewState(status: $status, schema: $schema, values: $values, fileValues: $fileValues, fieldErrors: $fieldErrors, schemaErrorMessage: $schemaErrorMessage, submitErrorMessage: $submitErrorMessage)';
}


}

/// @nodoc
abstract mixin class $FormViewStateCopyWith<$Res>  {
  factory $FormViewStateCopyWith(FormViewState value, $Res Function(FormViewState) _then) = _$FormViewStateCopyWithImpl;
@useResult
$Res call({
 FormStatus status, FormSchemaEntity? schema, Map<String, dynamic> values, Map<String, List<PickedFileInfo>> fileValues, Map<String, String> fieldErrors, String? schemaErrorMessage, String? submitErrorMessage
});


$FormSchemaEntityCopyWith<$Res>? get schema;

}
/// @nodoc
class _$FormViewStateCopyWithImpl<$Res>
    implements $FormViewStateCopyWith<$Res> {
  _$FormViewStateCopyWithImpl(this._self, this._then);

  final FormViewState _self;
  final $Res Function(FormViewState) _then;

/// Create a copy of FormViewState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? schema = freezed,Object? values = null,Object? fileValues = null,Object? fieldErrors = null,Object? schemaErrorMessage = freezed,Object? submitErrorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as FormSchemaEntity?,values: null == values ? _self.values : values // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,fileValues: null == fileValues ? _self.fileValues : fileValues // ignore: cast_nullable_to_non_nullable
as Map<String, List<PickedFileInfo>>,fieldErrors: null == fieldErrors ? _self.fieldErrors : fieldErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,schemaErrorMessage: freezed == schemaErrorMessage ? _self.schemaErrorMessage : schemaErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,submitErrorMessage: freezed == submitErrorMessage ? _self.submitErrorMessage : submitErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of FormViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormSchemaEntityCopyWith<$Res>? get schema {
    if (_self.schema == null) {
    return null;
  }

  return $FormSchemaEntityCopyWith<$Res>(_self.schema!, (value) {
    return _then(_self.copyWith(schema: value));
  });
}
}


/// Adds pattern-matching-related methods to [FormViewState].
extension FormViewStatePatterns on FormViewState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FormViewState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FormViewState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FormViewState value)  $default,){
final _that = this;
switch (_that) {
case _FormViewState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FormViewState value)?  $default,){
final _that = this;
switch (_that) {
case _FormViewState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FormStatus status,  FormSchemaEntity? schema,  Map<String, dynamic> values,  Map<String, List<PickedFileInfo>> fileValues,  Map<String, String> fieldErrors,  String? schemaErrorMessage,  String? submitErrorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FormViewState() when $default != null:
return $default(_that.status,_that.schema,_that.values,_that.fileValues,_that.fieldErrors,_that.schemaErrorMessage,_that.submitErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FormStatus status,  FormSchemaEntity? schema,  Map<String, dynamic> values,  Map<String, List<PickedFileInfo>> fileValues,  Map<String, String> fieldErrors,  String? schemaErrorMessage,  String? submitErrorMessage)  $default,) {final _that = this;
switch (_that) {
case _FormViewState():
return $default(_that.status,_that.schema,_that.values,_that.fileValues,_that.fieldErrors,_that.schemaErrorMessage,_that.submitErrorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FormStatus status,  FormSchemaEntity? schema,  Map<String, dynamic> values,  Map<String, List<PickedFileInfo>> fileValues,  Map<String, String> fieldErrors,  String? schemaErrorMessage,  String? submitErrorMessage)?  $default,) {final _that = this;
switch (_that) {
case _FormViewState() when $default != null:
return $default(_that.status,_that.schema,_that.values,_that.fileValues,_that.fieldErrors,_that.schemaErrorMessage,_that.submitErrorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _FormViewState extends FormViewState {
  const _FormViewState({this.status = FormStatus.initial, this.schema, final  Map<String, dynamic> values = const {}, final  Map<String, List<PickedFileInfo>> fileValues = const {}, final  Map<String, String> fieldErrors = const {}, this.schemaErrorMessage, this.submitErrorMessage}): _values = values,_fileValues = fileValues,_fieldErrors = fieldErrors,super._();
  

@override@JsonKey() final  FormStatus status;
@override final  FormSchemaEntity? schema;
 final  Map<String, dynamic> _values;
@override@JsonKey() Map<String, dynamic> get values {
  if (_values is EqualUnmodifiableMapView) return _values;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_values);
}

 final  Map<String, List<PickedFileInfo>> _fileValues;
@override@JsonKey() Map<String, List<PickedFileInfo>> get fileValues {
  if (_fileValues is EqualUnmodifiableMapView) return _fileValues;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_fileValues);
}

 final  Map<String, String> _fieldErrors;
@override@JsonKey() Map<String, String> get fieldErrors {
  if (_fieldErrors is EqualUnmodifiableMapView) return _fieldErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_fieldErrors);
}

@override final  String? schemaErrorMessage;
@override final  String? submitErrorMessage;

/// Create a copy of FormViewState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FormViewStateCopyWith<_FormViewState> get copyWith => __$FormViewStateCopyWithImpl<_FormViewState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FormViewState&&(identical(other.status, status) || other.status == status)&&(identical(other.schema, schema) || other.schema == schema)&&const DeepCollectionEquality().equals(other._values, _values)&&const DeepCollectionEquality().equals(other._fileValues, _fileValues)&&const DeepCollectionEquality().equals(other._fieldErrors, _fieldErrors)&&(identical(other.schemaErrorMessage, schemaErrorMessage) || other.schemaErrorMessage == schemaErrorMessage)&&(identical(other.submitErrorMessage, submitErrorMessage) || other.submitErrorMessage == submitErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,schema,const DeepCollectionEquality().hash(_values),const DeepCollectionEquality().hash(_fileValues),const DeepCollectionEquality().hash(_fieldErrors),schemaErrorMessage,submitErrorMessage);

@override
String toString() {
  return 'FormViewState(status: $status, schema: $schema, values: $values, fileValues: $fileValues, fieldErrors: $fieldErrors, schemaErrorMessage: $schemaErrorMessage, submitErrorMessage: $submitErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$FormViewStateCopyWith<$Res> implements $FormViewStateCopyWith<$Res> {
  factory _$FormViewStateCopyWith(_FormViewState value, $Res Function(_FormViewState) _then) = __$FormViewStateCopyWithImpl;
@override @useResult
$Res call({
 FormStatus status, FormSchemaEntity? schema, Map<String, dynamic> values, Map<String, List<PickedFileInfo>> fileValues, Map<String, String> fieldErrors, String? schemaErrorMessage, String? submitErrorMessage
});


@override $FormSchemaEntityCopyWith<$Res>? get schema;

}
/// @nodoc
class __$FormViewStateCopyWithImpl<$Res>
    implements _$FormViewStateCopyWith<$Res> {
  __$FormViewStateCopyWithImpl(this._self, this._then);

  final _FormViewState _self;
  final $Res Function(_FormViewState) _then;

/// Create a copy of FormViewState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? schema = freezed,Object? values = null,Object? fileValues = null,Object? fieldErrors = null,Object? schemaErrorMessage = freezed,Object? submitErrorMessage = freezed,}) {
  return _then(_FormViewState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,schema: freezed == schema ? _self.schema : schema // ignore: cast_nullable_to_non_nullable
as FormSchemaEntity?,values: null == values ? _self._values : values // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,fileValues: null == fileValues ? _self._fileValues : fileValues // ignore: cast_nullable_to_non_nullable
as Map<String, List<PickedFileInfo>>,fieldErrors: null == fieldErrors ? _self._fieldErrors : fieldErrors // ignore: cast_nullable_to_non_nullable
as Map<String, String>,schemaErrorMessage: freezed == schemaErrorMessage ? _self.schemaErrorMessage : schemaErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,submitErrorMessage: freezed == submitErrorMessage ? _self.submitErrorMessage : submitErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of FormViewState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormSchemaEntityCopyWith<$Res>? get schema {
    if (_self.schema == null) {
    return null;
  }

  return $FormSchemaEntityCopyWith<$Res>(_self.schema!, (value) {
    return _then(_self.copyWith(schema: value));
  });
}
}

// dart format on
