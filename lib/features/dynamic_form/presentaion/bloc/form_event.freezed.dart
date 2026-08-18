// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$FormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormEvent()';
}


}

/// @nodoc
class $FormEventCopyWith<$Res>  {
$FormEventCopyWith(FormEvent _, $Res Function(FormEvent) __);
}


/// Adds pattern-matching-related methods to [FormEvent].
extension FormEventPatterns on FormEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FormSchemaRequested value)?  schemaRequested,TResult Function( FieldValueChanged value)?  fieldValueChanged,TResult Function( FieldFilesChanged value)?  fieldFilesChanged,TResult Function( FormSubmitted value)?  formSubmitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FormSchemaRequested() when schemaRequested != null:
return schemaRequested(_that);case FieldValueChanged() when fieldValueChanged != null:
return fieldValueChanged(_that);case FieldFilesChanged() when fieldFilesChanged != null:
return fieldFilesChanged(_that);case FormSubmitted() when formSubmitted != null:
return formSubmitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FormSchemaRequested value)  schemaRequested,required TResult Function( FieldValueChanged value)  fieldValueChanged,required TResult Function( FieldFilesChanged value)  fieldFilesChanged,required TResult Function( FormSubmitted value)  formSubmitted,}){
final _that = this;
switch (_that) {
case FormSchemaRequested():
return schemaRequested(_that);case FieldValueChanged():
return fieldValueChanged(_that);case FieldFilesChanged():
return fieldFilesChanged(_that);case FormSubmitted():
return formSubmitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FormSchemaRequested value)?  schemaRequested,TResult? Function( FieldValueChanged value)?  fieldValueChanged,TResult? Function( FieldFilesChanged value)?  fieldFilesChanged,TResult? Function( FormSubmitted value)?  formSubmitted,}){
final _that = this;
switch (_that) {
case FormSchemaRequested() when schemaRequested != null:
return schemaRequested(_that);case FieldValueChanged() when fieldValueChanged != null:
return fieldValueChanged(_that);case FieldFilesChanged() when fieldFilesChanged != null:
return fieldFilesChanged(_that);case FormSubmitted() when formSubmitted != null:
return formSubmitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  schemaRequested,TResult Function( FormFieldEntity field,  dynamic value)?  fieldValueChanged,TResult Function( FormFieldEntity field,  List<PickedFileInfo> files)?  fieldFilesChanged,TResult Function()?  formSubmitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FormSchemaRequested() when schemaRequested != null:
return schemaRequested();case FieldValueChanged() when fieldValueChanged != null:
return fieldValueChanged(_that.field,_that.value);case FieldFilesChanged() when fieldFilesChanged != null:
return fieldFilesChanged(_that.field,_that.files);case FormSubmitted() when formSubmitted != null:
return formSubmitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  schemaRequested,required TResult Function( FormFieldEntity field,  dynamic value)  fieldValueChanged,required TResult Function( FormFieldEntity field,  List<PickedFileInfo> files)  fieldFilesChanged,required TResult Function()  formSubmitted,}) {final _that = this;
switch (_that) {
case FormSchemaRequested():
return schemaRequested();case FieldValueChanged():
return fieldValueChanged(_that.field,_that.value);case FieldFilesChanged():
return fieldFilesChanged(_that.field,_that.files);case FormSubmitted():
return formSubmitted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  schemaRequested,TResult? Function( FormFieldEntity field,  dynamic value)?  fieldValueChanged,TResult? Function( FormFieldEntity field,  List<PickedFileInfo> files)?  fieldFilesChanged,TResult? Function()?  formSubmitted,}) {final _that = this;
switch (_that) {
case FormSchemaRequested() when schemaRequested != null:
return schemaRequested();case FieldValueChanged() when fieldValueChanged != null:
return fieldValueChanged(_that.field,_that.value);case FieldFilesChanged() when fieldFilesChanged != null:
return fieldFilesChanged(_that.field,_that.files);case FormSubmitted() when formSubmitted != null:
return formSubmitted();case _:
  return null;

}
}

}

/// @nodoc


class FormSchemaRequested implements FormEvent {
  const FormSchemaRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormSchemaRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormEvent.schemaRequested()';
}


}




/// @nodoc


class FieldValueChanged implements FormEvent {
  const FieldValueChanged({required this.field, required this.value});
  

 final  FormFieldEntity field;
 final  dynamic value;

/// Create a copy of FormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldValueChangedCopyWith<FieldValueChanged> get copyWith => _$FieldValueChangedCopyWithImpl<FieldValueChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldValueChanged&&(identical(other.field, field) || other.field == field)&&const DeepCollectionEquality().equals(other.value, value));
}


@override
int get hashCode => Object.hash(runtimeType,field,const DeepCollectionEquality().hash(value));

@override
String toString() {
  return 'FormEvent.fieldValueChanged(field: $field, value: $value)';
}


}

/// @nodoc
abstract mixin class $FieldValueChangedCopyWith<$Res> implements $FormEventCopyWith<$Res> {
  factory $FieldValueChangedCopyWith(FieldValueChanged value, $Res Function(FieldValueChanged) _then) = _$FieldValueChangedCopyWithImpl;
@useResult
$Res call({
 FormFieldEntity field, dynamic value
});


$FormFieldEntityCopyWith<$Res> get field;

}
/// @nodoc
class _$FieldValueChangedCopyWithImpl<$Res>
    implements $FieldValueChangedCopyWith<$Res> {
  _$FieldValueChangedCopyWithImpl(this._self, this._then);

  final FieldValueChanged _self;
  final $Res Function(FieldValueChanged) _then;

/// Create a copy of FormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? value = freezed,}) {
  return _then(FieldValueChanged(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as FormFieldEntity,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

/// Create a copy of FormEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormFieldEntityCopyWith<$Res> get field {
  
  return $FormFieldEntityCopyWith<$Res>(_self.field, (value) {
    return _then(_self.copyWith(field: value));
  });
}
}

/// @nodoc


class FieldFilesChanged implements FormEvent {
  const FieldFilesChanged({required this.field, required final  List<PickedFileInfo> files}): _files = files;
  

 final  FormFieldEntity field;
 final  List<PickedFileInfo> _files;
 List<PickedFileInfo> get files {
  if (_files is EqualUnmodifiableListView) return _files;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_files);
}


/// Create a copy of FormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FieldFilesChangedCopyWith<FieldFilesChanged> get copyWith => _$FieldFilesChangedCopyWithImpl<FieldFilesChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FieldFilesChanged&&(identical(other.field, field) || other.field == field)&&const DeepCollectionEquality().equals(other._files, _files));
}


@override
int get hashCode => Object.hash(runtimeType,field,const DeepCollectionEquality().hash(_files));

@override
String toString() {
  return 'FormEvent.fieldFilesChanged(field: $field, files: $files)';
}


}

/// @nodoc
abstract mixin class $FieldFilesChangedCopyWith<$Res> implements $FormEventCopyWith<$Res> {
  factory $FieldFilesChangedCopyWith(FieldFilesChanged value, $Res Function(FieldFilesChanged) _then) = _$FieldFilesChangedCopyWithImpl;
@useResult
$Res call({
 FormFieldEntity field, List<PickedFileInfo> files
});


$FormFieldEntityCopyWith<$Res> get field;

}
/// @nodoc
class _$FieldFilesChangedCopyWithImpl<$Res>
    implements $FieldFilesChangedCopyWith<$Res> {
  _$FieldFilesChangedCopyWithImpl(this._self, this._then);

  final FieldFilesChanged _self;
  final $Res Function(FieldFilesChanged) _then;

/// Create a copy of FormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? field = null,Object? files = null,}) {
  return _then(FieldFilesChanged(
field: null == field ? _self.field : field // ignore: cast_nullable_to_non_nullable
as FormFieldEntity,files: null == files ? _self._files : files // ignore: cast_nullable_to_non_nullable
as List<PickedFileInfo>,
  ));
}

/// Create a copy of FormEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FormFieldEntityCopyWith<$Res> get field {
  
  return $FormFieldEntityCopyWith<$Res>(_self.field, (value) {
    return _then(_self.copyWith(field: value));
  });
}
}

/// @nodoc


class FormSubmitted implements FormEvent {
  const FormSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FormSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'FormEvent.formSubmitted()';
}


}




// dart format on
