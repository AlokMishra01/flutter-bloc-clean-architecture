// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_form_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginFormState {
  Field<String> get emailField => throw _privateConstructorUsedError;
  Field<String> get passwordField => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginFormStateCopyWith<LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginFormStateCopyWith<$Res> {
  factory $LoginFormStateCopyWith(
          LoginFormState value, $Res Function(LoginFormState) then) =
      _$LoginFormStateCopyWithImpl<$Res>;
  $Res call({Field<String> emailField, Field<String> passwordField});

  $FieldCopyWith<String, $Res> get emailField;
  $FieldCopyWith<String, $Res> get passwordField;
}

/// @nodoc
class _$LoginFormStateCopyWithImpl<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  _$LoginFormStateCopyWithImpl(this._value, this._then);

  final LoginFormState _value;
  // ignore: unused_field
  final $Res Function(LoginFormState) _then;

  @override
  $Res call({
    Object? emailField = freezed,
    Object? passwordField = freezed,
  }) {
    return _then(_value.copyWith(
      emailField: emailField == freezed
          ? _value.emailField
          : emailField // ignore: cast_nullable_to_non_nullable
              as Field<String>,
      passwordField: passwordField == freezed
          ? _value.passwordField
          : passwordField // ignore: cast_nullable_to_non_nullable
              as Field<String>,
    ));
  }

  @override
  $FieldCopyWith<String, $Res> get emailField {
    return $FieldCopyWith<String, $Res>(_value.emailField, (value) {
      return _then(_value.copyWith(emailField: value));
    });
  }

  @override
  $FieldCopyWith<String, $Res> get passwordField {
    return $FieldCopyWith<String, $Res>(_value.passwordField, (value) {
      return _then(_value.copyWith(passwordField: value));
    });
  }
}

/// @nodoc
abstract class _$$_LoginFormStateCopyWith<$Res>
    implements $LoginFormStateCopyWith<$Res> {
  factory _$$_LoginFormStateCopyWith(
          _$_LoginFormState value, $Res Function(_$_LoginFormState) then) =
      __$$_LoginFormStateCopyWithImpl<$Res>;
  @override
  $Res call({Field<String> emailField, Field<String> passwordField});

  @override
  $FieldCopyWith<String, $Res> get emailField;
  @override
  $FieldCopyWith<String, $Res> get passwordField;
}

/// @nodoc
class __$$_LoginFormStateCopyWithImpl<$Res>
    extends _$LoginFormStateCopyWithImpl<$Res>
    implements _$$_LoginFormStateCopyWith<$Res> {
  __$$_LoginFormStateCopyWithImpl(
      _$_LoginFormState _value, $Res Function(_$_LoginFormState) _then)
      : super(_value, (v) => _then(v as _$_LoginFormState));

  @override
  _$_LoginFormState get _value => super._value as _$_LoginFormState;

  @override
  $Res call({
    Object? emailField = freezed,
    Object? passwordField = freezed,
  }) {
    return _then(_$_LoginFormState(
      emailField: emailField == freezed
          ? _value.emailField
          : emailField // ignore: cast_nullable_to_non_nullable
              as Field<String>,
      passwordField: passwordField == freezed
          ? _value.passwordField
          : passwordField // ignore: cast_nullable_to_non_nullable
              as Field<String>,
    ));
  }
}

/// @nodoc

class _$_LoginFormState extends _LoginFormState {
  const _$_LoginFormState(
      {required this.emailField, required this.passwordField})
      : super._();

  @override
  final Field<String> emailField;
  @override
  final Field<String> passwordField;

  @override
  String toString() {
    return 'LoginFormState(emailField: $emailField, passwordField: $passwordField)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginFormState &&
            const DeepCollectionEquality()
                .equals(other.emailField, emailField) &&
            const DeepCollectionEquality()
                .equals(other.passwordField, passwordField));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailField),
      const DeepCollectionEquality().hash(passwordField));

  @JsonKey(ignore: true)
  @override
  _$$_LoginFormStateCopyWith<_$_LoginFormState> get copyWith =>
      __$$_LoginFormStateCopyWithImpl<_$_LoginFormState>(this, _$identity);
}

abstract class _LoginFormState extends LoginFormState {
  const factory _LoginFormState(
      {required final Field<String> emailField,
      required final Field<String> passwordField}) = _$_LoginFormState;
  const _LoginFormState._() : super._();

  @override
  Field<String> get emailField => throw _privateConstructorUsedError;
  @override
  Field<String> get passwordField => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LoginFormStateCopyWith<_$_LoginFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
