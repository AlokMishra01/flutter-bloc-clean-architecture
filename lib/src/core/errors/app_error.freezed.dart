// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppError {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationsError,
    required TResult Function() unAuthorized,
    required TResult Function() noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationsError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_NoInternet value) noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res> implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  final AppError _value;
  // ignore: unused_field
  final $Res Function(AppError) _then;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res> extends _$AppErrorCopyWithImpl<$Res>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, (v) => _then(v as _$_ServerError));

  @override
  _$_ServerError get _value => super._value as _$_ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_ServerError(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppError.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationsError,
    required TResult Function() unAuthorized,
    required TResult Function() noInternet,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationsError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AppError {
  const factory _ServerError({required final String message}) = _$_ServerError;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValidationErrorCopyWith<$Res> {
  factory _$$_ValidationErrorCopyWith(
          _$_ValidationError value, $Res Function(_$_ValidationError) then) =
      __$$_ValidationErrorCopyWithImpl<$Res>;
  $Res call({String message, Map<String, dynamic> errors});
}

/// @nodoc
class __$$_ValidationErrorCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res>
    implements _$$_ValidationErrorCopyWith<$Res> {
  __$$_ValidationErrorCopyWithImpl(
      _$_ValidationError _value, $Res Function(_$_ValidationError) _then)
      : super(_value, (v) => _then(v as _$_ValidationError));

  @override
  _$_ValidationError get _value => super._value as _$_ValidationError;

  @override
  $Res call({
    Object? message = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_ValidationError(
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

class _$_ValidationError implements _ValidationError {
  const _$_ValidationError(
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
    return 'AppError.validationsError(message: $message, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValidationError &&
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
  _$$_ValidationErrorCopyWith<_$_ValidationError> get copyWith =>
      __$$_ValidationErrorCopyWithImpl<_$_ValidationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationsError,
    required TResult Function() unAuthorized,
    required TResult Function() noInternet,
  }) {
    return validationsError(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
  }) {
    return validationsError?.call(message, errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (validationsError != null) {
      return validationsError(message, errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationsError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return validationsError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
  }) {
    return validationsError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (validationsError != null) {
      return validationsError(this);
    }
    return orElse();
  }
}

abstract class _ValidationError implements AppError {
  const factory _ValidationError(
      {required final String message,
      required final Map<String, dynamic> errors}) = _$_ValidationError;

  String get message => throw _privateConstructorUsedError;
  Map<String, dynamic> get errors => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ValidationErrorCopyWith<_$_ValidationError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthorizedCopyWith<$Res> {
  factory _$$_UnAuthorizedCopyWith(
          _$_UnAuthorized value, $Res Function(_$_UnAuthorized) then) =
      __$$_UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthorizedCopyWithImpl<$Res> extends _$AppErrorCopyWithImpl<$Res>
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
    return 'AppError.unAuthorized()';
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
    required TResult Function(String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationsError,
    required TResult Function() unAuthorized,
    required TResult Function() noInternet,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
  }) {
    return unAuthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
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
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationsError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
  }) {
    return unAuthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class _UnAuthorized implements AppError {
  const factory _UnAuthorized() = _$_UnAuthorized;
}

/// @nodoc
abstract class _$$_NoInternetCopyWith<$Res> {
  factory _$$_NoInternetCopyWith(
          _$_NoInternet value, $Res Function(_$_NoInternet) then) =
      __$$_NoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoInternetCopyWithImpl<$Res> extends _$AppErrorCopyWithImpl<$Res>
    implements _$$_NoInternetCopyWith<$Res> {
  __$$_NoInternetCopyWithImpl(
      _$_NoInternet _value, $Res Function(_$_NoInternet) _then)
      : super(_value, (v) => _then(v as _$_NoInternet));

  @override
  _$_NoInternet get _value => super._value as _$_NoInternet;
}

/// @nodoc

class _$_NoInternet implements _NoInternet {
  const _$_NoInternet();

  @override
  String toString() {
    return 'AppError.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function(String message, Map<String, dynamic> errors)
        validationsError,
    required TResult Function() unAuthorized,
    required TResult Function() noInternet,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function(String message, Map<String, dynamic> errors)?
        validationsError,
    TResult Function()? unAuthorized,
    TResult Function()? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_ValidationError value) validationsError,
    required TResult Function(_UnAuthorized value) unAuthorized,
    required TResult Function(_NoInternet value) noInternet,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ServerError value)? serverError,
    TResult Function(_ValidationError value)? validationsError,
    TResult Function(_UnAuthorized value)? unAuthorized,
    TResult Function(_NoInternet value)? noInternet,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _NoInternet implements AppError {
  const factory _NoInternet() = _$_NoInternet;
}
