// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'property_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PropertyEvent implements DiagnosticableTreeMixin {




@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PropertyEvent'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PropertyEvent()';
}


}

/// @nodoc
class $PropertyEventCopyWith<$Res>  {
$PropertyEventCopyWith(PropertyEvent _, $Res Function(PropertyEvent) __);
}


/// Adds pattern-matching-related methods to [PropertyEvent].
extension PropertyEventPatterns on PropertyEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AddNewProperty value)?  addNewProperty,TResult Function( _FetchAllProperties value)?  fetchAllProperties,TResult Function( _ShareProperty value)?  shareProperty,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AddNewProperty() when addNewProperty != null:
return addNewProperty(_that);case _FetchAllProperties() when fetchAllProperties != null:
return fetchAllProperties(_that);case _ShareProperty() when shareProperty != null:
return shareProperty(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AddNewProperty value)  addNewProperty,required TResult Function( _FetchAllProperties value)  fetchAllProperties,required TResult Function( _ShareProperty value)  shareProperty,}){
final _that = this;
switch (_that) {
case _AddNewProperty():
return addNewProperty(_that);case _FetchAllProperties():
return fetchAllProperties(_that);case _ShareProperty():
return shareProperty(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AddNewProperty value)?  addNewProperty,TResult? Function( _FetchAllProperties value)?  fetchAllProperties,TResult? Function( _ShareProperty value)?  shareProperty,}){
final _that = this;
switch (_that) {
case _AddNewProperty() when addNewProperty != null:
return addNewProperty(_that);case _FetchAllProperties() when fetchAllProperties != null:
return fetchAllProperties(_that);case _ShareProperty() when shareProperty != null:
return shareProperty(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PropertyModel property,  VoidCallback onSuccess)?  addNewProperty,TResult Function()?  fetchAllProperties,TResult Function( String title,  String description,  String url,  String imageUrl)?  shareProperty,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AddNewProperty() when addNewProperty != null:
return addNewProperty(_that.property,_that.onSuccess);case _FetchAllProperties() when fetchAllProperties != null:
return fetchAllProperties();case _ShareProperty() when shareProperty != null:
return shareProperty(_that.title,_that.description,_that.url,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PropertyModel property,  VoidCallback onSuccess)  addNewProperty,required TResult Function()  fetchAllProperties,required TResult Function( String title,  String description,  String url,  String imageUrl)  shareProperty,}) {final _that = this;
switch (_that) {
case _AddNewProperty():
return addNewProperty(_that.property,_that.onSuccess);case _FetchAllProperties():
return fetchAllProperties();case _ShareProperty():
return shareProperty(_that.title,_that.description,_that.url,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PropertyModel property,  VoidCallback onSuccess)?  addNewProperty,TResult? Function()?  fetchAllProperties,TResult? Function( String title,  String description,  String url,  String imageUrl)?  shareProperty,}) {final _that = this;
switch (_that) {
case _AddNewProperty() when addNewProperty != null:
return addNewProperty(_that.property,_that.onSuccess);case _FetchAllProperties() when fetchAllProperties != null:
return fetchAllProperties();case _ShareProperty() when shareProperty != null:
return shareProperty(_that.title,_that.description,_that.url,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc


class _AddNewProperty with DiagnosticableTreeMixin implements PropertyEvent {
  const _AddNewProperty(this.property, this.onSuccess);
  

 final  PropertyModel property;
 final  VoidCallback onSuccess;

/// Create a copy of PropertyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AddNewPropertyCopyWith<_AddNewProperty> get copyWith => __$AddNewPropertyCopyWithImpl<_AddNewProperty>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PropertyEvent.addNewProperty'))
    ..add(DiagnosticsProperty('property', property))..add(DiagnosticsProperty('onSuccess', onSuccess));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AddNewProperty&&(identical(other.property, property) || other.property == property)&&(identical(other.onSuccess, onSuccess) || other.onSuccess == onSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,property,onSuccess);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PropertyEvent.addNewProperty(property: $property, onSuccess: $onSuccess)';
}


}

/// @nodoc
abstract mixin class _$AddNewPropertyCopyWith<$Res> implements $PropertyEventCopyWith<$Res> {
  factory _$AddNewPropertyCopyWith(_AddNewProperty value, $Res Function(_AddNewProperty) _then) = __$AddNewPropertyCopyWithImpl;
@useResult
$Res call({
 PropertyModel property, VoidCallback onSuccess
});




}
/// @nodoc
class __$AddNewPropertyCopyWithImpl<$Res>
    implements _$AddNewPropertyCopyWith<$Res> {
  __$AddNewPropertyCopyWithImpl(this._self, this._then);

  final _AddNewProperty _self;
  final $Res Function(_AddNewProperty) _then;

/// Create a copy of PropertyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? property = null,Object? onSuccess = null,}) {
  return _then(_AddNewProperty(
null == property ? _self.property : property // ignore: cast_nullable_to_non_nullable
as PropertyModel,null == onSuccess ? _self.onSuccess : onSuccess // ignore: cast_nullable_to_non_nullable
as VoidCallback,
  ));
}


}

/// @nodoc


class _FetchAllProperties with DiagnosticableTreeMixin implements PropertyEvent {
  const _FetchAllProperties();
  





@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PropertyEvent.fetchAllProperties'))
    ;
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchAllProperties);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PropertyEvent.fetchAllProperties()';
}


}




/// @nodoc


class _ShareProperty with DiagnosticableTreeMixin implements PropertyEvent {
  const _ShareProperty({required this.title, required this.description, required this.url, required this.imageUrl});
  

 final  String title;
 final  String description;
 final  String url;
 final  String imageUrl;

/// Create a copy of PropertyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SharePropertyCopyWith<_ShareProperty> get copyWith => __$SharePropertyCopyWithImpl<_ShareProperty>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PropertyEvent.shareProperty'))
    ..add(DiagnosticsProperty('title', title))..add(DiagnosticsProperty('description', description))..add(DiagnosticsProperty('url', url))..add(DiagnosticsProperty('imageUrl', imageUrl));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ShareProperty&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.url, url) || other.url == url)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}


@override
int get hashCode => Object.hash(runtimeType,title,description,url,imageUrl);

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PropertyEvent.shareProperty(title: $title, description: $description, url: $url, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$SharePropertyCopyWith<$Res> implements $PropertyEventCopyWith<$Res> {
  factory _$SharePropertyCopyWith(_ShareProperty value, $Res Function(_ShareProperty) _then) = __$SharePropertyCopyWithImpl;
@useResult
$Res call({
 String title, String description, String url, String imageUrl
});




}
/// @nodoc
class __$SharePropertyCopyWithImpl<$Res>
    implements _$SharePropertyCopyWith<$Res> {
  __$SharePropertyCopyWithImpl(this._self, this._then);

  final _ShareProperty _self;
  final $Res Function(_ShareProperty) _then;

/// Create a copy of PropertyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? title = null,Object? description = null,Object? url = null,Object? imageUrl = null,}) {
  return _then(_ShareProperty(
title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PropertyState implements DiagnosticableTreeMixin {

 bool get submitLoading; bool get fetchLoading; bool get shareLoading; List<PropertyModel> get properties;
/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PropertyStateCopyWith<PropertyState> get copyWith => _$PropertyStateCopyWithImpl<PropertyState>(this as PropertyState, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PropertyState'))
    ..add(DiagnosticsProperty('submitLoading', submitLoading))..add(DiagnosticsProperty('fetchLoading', fetchLoading))..add(DiagnosticsProperty('shareLoading', shareLoading))..add(DiagnosticsProperty('properties', properties));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PropertyState&&(identical(other.submitLoading, submitLoading) || other.submitLoading == submitLoading)&&(identical(other.fetchLoading, fetchLoading) || other.fetchLoading == fetchLoading)&&(identical(other.shareLoading, shareLoading) || other.shareLoading == shareLoading)&&const DeepCollectionEquality().equals(other.properties, properties));
}


@override
int get hashCode => Object.hash(runtimeType,submitLoading,fetchLoading,shareLoading,const DeepCollectionEquality().hash(properties));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PropertyState(submitLoading: $submitLoading, fetchLoading: $fetchLoading, shareLoading: $shareLoading, properties: $properties)';
}


}

/// @nodoc
abstract mixin class $PropertyStateCopyWith<$Res>  {
  factory $PropertyStateCopyWith(PropertyState value, $Res Function(PropertyState) _then) = _$PropertyStateCopyWithImpl;
@useResult
$Res call({
 bool submitLoading, bool fetchLoading, bool shareLoading, List<PropertyModel> properties
});




}
/// @nodoc
class _$PropertyStateCopyWithImpl<$Res>
    implements $PropertyStateCopyWith<$Res> {
  _$PropertyStateCopyWithImpl(this._self, this._then);

  final PropertyState _self;
  final $Res Function(PropertyState) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? submitLoading = null,Object? fetchLoading = null,Object? shareLoading = null,Object? properties = null,}) {
  return _then(_self.copyWith(
submitLoading: null == submitLoading ? _self.submitLoading : submitLoading // ignore: cast_nullable_to_non_nullable
as bool,fetchLoading: null == fetchLoading ? _self.fetchLoading : fetchLoading // ignore: cast_nullable_to_non_nullable
as bool,shareLoading: null == shareLoading ? _self.shareLoading : shareLoading // ignore: cast_nullable_to_non_nullable
as bool,properties: null == properties ? _self.properties : properties // ignore: cast_nullable_to_non_nullable
as List<PropertyModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PropertyState].
extension PropertyStatePatterns on PropertyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PropertyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PropertyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PropertyState value)  $default,){
final _that = this;
switch (_that) {
case _PropertyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PropertyState value)?  $default,){
final _that = this;
switch (_that) {
case _PropertyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool submitLoading,  bool fetchLoading,  bool shareLoading,  List<PropertyModel> properties)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PropertyState() when $default != null:
return $default(_that.submitLoading,_that.fetchLoading,_that.shareLoading,_that.properties);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool submitLoading,  bool fetchLoading,  bool shareLoading,  List<PropertyModel> properties)  $default,) {final _that = this;
switch (_that) {
case _PropertyState():
return $default(_that.submitLoading,_that.fetchLoading,_that.shareLoading,_that.properties);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool submitLoading,  bool fetchLoading,  bool shareLoading,  List<PropertyModel> properties)?  $default,) {final _that = this;
switch (_that) {
case _PropertyState() when $default != null:
return $default(_that.submitLoading,_that.fetchLoading,_that.shareLoading,_that.properties);case _:
  return null;

}
}

}

/// @nodoc


class _PropertyState with DiagnosticableTreeMixin implements PropertyState {
  const _PropertyState({required this.submitLoading, required this.fetchLoading, required this.shareLoading, required final  List<PropertyModel> properties}): _properties = properties;
  

@override final  bool submitLoading;
@override final  bool fetchLoading;
@override final  bool shareLoading;
 final  List<PropertyModel> _properties;
@override List<PropertyModel> get properties {
  if (_properties is EqualUnmodifiableListView) return _properties;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_properties);
}


/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PropertyStateCopyWith<_PropertyState> get copyWith => __$PropertyStateCopyWithImpl<_PropertyState>(this, _$identity);


@override
void debugFillProperties(DiagnosticPropertiesBuilder properties) {
  properties
    ..add(DiagnosticsProperty('type', 'PropertyState'))
    ..add(DiagnosticsProperty('submitLoading', submitLoading))..add(DiagnosticsProperty('fetchLoading', fetchLoading))..add(DiagnosticsProperty('shareLoading', shareLoading))..add(DiagnosticsProperty('properties', properties));
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PropertyState&&(identical(other.submitLoading, submitLoading) || other.submitLoading == submitLoading)&&(identical(other.fetchLoading, fetchLoading) || other.fetchLoading == fetchLoading)&&(identical(other.shareLoading, shareLoading) || other.shareLoading == shareLoading)&&const DeepCollectionEquality().equals(other._properties, _properties));
}


@override
int get hashCode => Object.hash(runtimeType,submitLoading,fetchLoading,shareLoading,const DeepCollectionEquality().hash(_properties));

@override
String toString({ DiagnosticLevel minLevel = DiagnosticLevel.info }) {
  return 'PropertyState(submitLoading: $submitLoading, fetchLoading: $fetchLoading, shareLoading: $shareLoading, properties: $properties)';
}


}

/// @nodoc
abstract mixin class _$PropertyStateCopyWith<$Res> implements $PropertyStateCopyWith<$Res> {
  factory _$PropertyStateCopyWith(_PropertyState value, $Res Function(_PropertyState) _then) = __$PropertyStateCopyWithImpl;
@override @useResult
$Res call({
 bool submitLoading, bool fetchLoading, bool shareLoading, List<PropertyModel> properties
});




}
/// @nodoc
class __$PropertyStateCopyWithImpl<$Res>
    implements _$PropertyStateCopyWith<$Res> {
  __$PropertyStateCopyWithImpl(this._self, this._then);

  final _PropertyState _self;
  final $Res Function(_PropertyState) _then;

/// Create a copy of PropertyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? submitLoading = null,Object? fetchLoading = null,Object? shareLoading = null,Object? properties = null,}) {
  return _then(_PropertyState(
submitLoading: null == submitLoading ? _self.submitLoading : submitLoading // ignore: cast_nullable_to_non_nullable
as bool,fetchLoading: null == fetchLoading ? _self.fetchLoading : fetchLoading // ignore: cast_nullable_to_non_nullable
as bool,shareLoading: null == shareLoading ? _self.shareLoading : shareLoading // ignore: cast_nullable_to_non_nullable
as bool,properties: null == properties ? _self._properties : properties // ignore: cast_nullable_to_non_nullable
as List<PropertyModel>,
  ));
}


}

// dart format on
