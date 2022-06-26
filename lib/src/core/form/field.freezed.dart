// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'field.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Field<T> {
  String get value => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  bool get obscureText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FieldCopyWith<T, Field<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FieldCopyWith<T, $Res> {
  factory $FieldCopyWith(Field<T> value, $Res Function(Field<T>) then) =
      _$FieldCopyWithImpl<T, $Res>;
  $Res call(
      {String value, String errorMessage, bool isValid, bool obscureText});
}

/// @nodoc
class _$FieldCopyWithImpl<T, $Res> implements $FieldCopyWith<T, $Res> {
  _$FieldCopyWithImpl(this._value, this._then);

  final Field<T> _value;
  // ignore: unused_field
  final $Res Function(Field<T>) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? errorMessage = freezed,
    Object? isValid = freezed,
    Object? obscureText = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureText: obscureText == freezed
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_FieldCopyWith<T, $Res> implements $FieldCopyWith<T, $Res> {
  factory _$$_FieldCopyWith(
          _$_Field<T> value, $Res Function(_$_Field<T>) then) =
      __$$_FieldCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {String value, String errorMessage, bool isValid, bool obscureText});
}

/// @nodoc
class __$$_FieldCopyWithImpl<T, $Res> extends _$FieldCopyWithImpl<T, $Res>
    implements _$$_FieldCopyWith<T, $Res> {
  __$$_FieldCopyWithImpl(_$_Field<T> _value, $Res Function(_$_Field<T>) _then)
      : super(_value, (v) => _then(v as _$_Field<T>));

  @override
  _$_Field<T> get _value => super._value as _$_Field<T>;

  @override
  $Res call({
    Object? value = freezed,
    Object? errorMessage = freezed,
    Object? isValid = freezed,
    Object? obscureText = freezed,
  }) {
    return _then(_$_Field<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: errorMessage == freezed
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      isValid: isValid == freezed
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      obscureText: obscureText == freezed
          ? _value.obscureText
          : obscureText // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Field<T> extends _Field<T> {
  const _$_Field(
      {required this.value,
      this.errorMessage = '',
      this.isValid = false,
      this.obscureText = false})
      : super._();

  @override
  final String value;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final bool obscureText;

  @override
  String toString() {
    return 'Field<$T>(value: $value, errorMessage: $errorMessage, isValid: $isValid, obscureText: $obscureText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Field<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.errorMessage, errorMessage) &&
            const DeepCollectionEquality().equals(other.isValid, isValid) &&
            const DeepCollectionEquality()
                .equals(other.obscureText, obscureText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(errorMessage),
      const DeepCollectionEquality().hash(isValid),
      const DeepCollectionEquality().hash(obscureText));

  @JsonKey(ignore: true)
  @override
  _$$_FieldCopyWith<T, _$_Field<T>> get copyWith =>
      __$$_FieldCopyWithImpl<T, _$_Field<T>>(this, _$identity);
}

abstract class _Field<T> extends Field<T> {
  const factory _Field(
      {required final String value,
      final String errorMessage,
      final bool isValid,
      final bool obscureText}) = _$_Field<T>;
  const _Field._() : super._();

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  String get errorMessage => throw _privateConstructorUsedError;
  @override
  bool get isValid => throw _privateConstructorUsedError;
  @override
  bool get obscureText => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_FieldCopyWith<T, _$_Field<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
