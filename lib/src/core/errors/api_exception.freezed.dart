// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ApiException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiExceptionCopyWith<$Res> {
  factory $ApiExceptionCopyWith(
          ApiException value, $Res Function(ApiException) then) =
      _$ApiExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiExceptionCopyWithImpl<$Res> implements $ApiExceptionCopyWith<$Res> {
  _$ApiExceptionCopyWithImpl(this._value, this._then);

  final ApiException _value;
  // ignore: unused_field
  final $Res Function(ApiException) _then;
}

/// @nodoc
abstract class _$$_ServerExceptionCopyWith<$Res> {
  factory _$$_ServerExceptionCopyWith(
          _$_ServerException value, $Res Function(_$_ServerException) then) =
      __$$_ServerExceptionCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ServerExceptionCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$$_ServerExceptionCopyWith<$Res> {
  __$$_ServerExceptionCopyWithImpl(
      _$_ServerException _value, $Res Function(_$_ServerException) _then)
      : super(_value, (v) => _then(v as _$_ServerException));

  @override
  _$_ServerException get _value => super._value as _$_ServerException;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerException(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerException implements _ServerException {
  const _$_ServerException({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'ApiException.serverException(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerException &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      __$$_ServerExceptionCopyWithImpl<_$_ServerException>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() network,
  }) {
    return serverException(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
  }) {
    return serverException?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class _ServerException implements ApiException {
  const factory _ServerException({required final String message}) =
      _$_ServerException;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ServerExceptionCopyWith<_$_ServerException> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnprocessableEntityCopyWith<$Res> {
  factory _$$_UnprocessableEntityCopyWith(_$_UnprocessableEntity value,
          $Res Function(_$_UnprocessableEntity) then) =
      __$$_UnprocessableEntityCopyWithImpl<$Res>;
  $Res call({String message, Map<String, dynamic> errors});
}

/// @nodoc
class __$$_UnprocessableEntityCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$$_UnprocessableEntityCopyWith<$Res> {
  __$$_UnprocessableEntityCopyWithImpl(_$_UnprocessableEntity _value,
      $Res Function(_$_UnprocessableEntity) _then)
      : super(_value, (v) => _then(v as _$_UnprocessableEntity));

  @override
  _$_UnprocessableEntity get _value => super._value as _$_UnprocessableEntity;

  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_UnprocessableEntity(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: errors == freezed
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$_UnprocessableEntity implements _UnprocessableEntity {
  const _$_UnprocessableEntity(
      {required this.message, required final Map<String, dynamic> errors})
      : _errors = errors;

  @override
  final String message;
  final Map<String, dynamic> _errors;
  @override
  Map<String, dynamic> get errors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_errors);
  }

  @override
  String toString() {
    return 'ApiException.unprocessableEntity(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnprocessableEntity &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  _$$_UnprocessableEntityCopyWith<_$_UnprocessableEntity> get copyWith =>
      __$$_UnprocessableEntityCopyWithImpl<_$_UnprocessableEntity>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() network,
  }) {
    return unprocessableEntity(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
  }) {
    return unprocessableEntity?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
  }) {
    return unprocessableEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
  }) {
    return unprocessableEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(this);
    }
    return orElse();
  }
}

abstract class _UnprocessableEntity implements ApiException {
  const factory _UnprocessableEntity(
      {required final String message,
      required final Map<String, dynamic> errors}) = _$_UnprocessableEntity;

  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic> get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_UnprocessableEntityCopyWith<_$_UnprocessableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthorizedCopyWith<$Res> {
  factory _$$_UnAuthorizedCopyWith(
          _$_UnAuthorized value, $Res Function(_$_UnAuthorized) then) =
      __$$_UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthorizedCopyWithImpl<$Res>
    extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$$_UnAuthorizedCopyWith<$Res> {
  __$$_UnAuthorizedCopyWithImpl(
      _$_UnAuthorized _value, $Res Function(_$_UnAuthorized) _then)
      : super(_value, (v) => _then(v as _$_UnAuthorized));

  @override
  _$_UnAuthorized get _value => super._value as _$_UnAuthorized;
}

/// @nodoc

class _$_UnAuthorized implements _UnAuthorized {
  const _$_UnAuthorized();

  @override
  String toString() {
    return 'ApiException.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() network,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements ApiException {
  const factory _UnAuthorized() = _$_UnAuthorized;
}

/// @nodoc
abstract class _$$_NetworkCopyWith<$Res> {
  factory _$$_NetworkCopyWith(
          _$_Network value, $Res Function(_$_Network) then) =
      __$$_NetworkCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkCopyWithImpl<$Res> extends _$ApiExceptionCopyWithImpl<$Res>
    implements _$$_NetworkCopyWith<$Res> {
  __$$_NetworkCopyWithImpl(_$_Network _value, $Res Function(_$_Network) _then)
      : super(_value, (v) => _then(v as _$_Network));

  @override
  _$_Network get _value => super._value as _$_Network;
}

/// @nodoc

class _$_Network implements _Network {
  const _$_Network();

  @override
  String toString() {
    return 'ApiException.network()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Network);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverException,
    required TResult Function(String message, Map<String, dynamic> errors)
        unprocessableEntity,
    required TResult Function() unAuthorized,
    required TResult Function() network,
  }) {
    return network();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
  }) {
    return network?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverException,
    TResult Function(String message, Map<String, dynamic> errors)?
        unprocessableEntity,
    TResult Function()? unAuthorized,
    TResult Function()? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerException value) serverException,
    required TResult Function(_UnprocessableEntity value) unprocessableEntity,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_Network value) network,
  }) {
    return network(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
  }) {
    return network?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerException value)? serverException,
    TResult Function(_UnprocessableEntity value)? unprocessableEntity,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_Network value)? network,
    required TResult orElse(),
  }) {
    if (network != null) {
      return network(this);
    }
    return orElse();
  }
}

abstract class _Network implements ApiException {
  const factory _Network() = _$_Network;
}
