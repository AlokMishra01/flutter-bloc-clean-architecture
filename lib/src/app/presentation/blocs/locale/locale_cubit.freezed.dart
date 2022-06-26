// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'locale_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LocaleState {
  Locale get locale => throw _privateConstructorUsedError;
  ThemeMode get themeMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocaleStateCopyWith<LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocaleStateCopyWith<$Res> {
  factory $LocaleStateCopyWith(
          LocaleState value, $Res Function(LocaleState) then) =
      _$LocaleStateCopyWithImpl<$Res>;
  $Res call({Locale locale, ThemeMode themeMode});
}

/// @nodoc
class _$LocaleStateCopyWithImpl<$Res> implements $LocaleStateCopyWith<$Res> {
  _$LocaleStateCopyWithImpl(this._value, this._then);

  final LocaleState _value;
  // ignore: unused_field
  final $Res Function(LocaleState) _then;

  @override
  $Res call({
    Object? locale = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_value.copyWith(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc
abstract class _$$_LocaleStateCopyWith<$Res>
    implements $LocaleStateCopyWith<$Res> {
  factory _$$_LocaleStateCopyWith(
          _$_LocaleState value, $Res Function(_$_LocaleState) then) =
      __$$_LocaleStateCopyWithImpl<$Res>;
  @override
  $Res call({Locale locale, ThemeMode themeMode});
}

/// @nodoc
class __$$_LocaleStateCopyWithImpl<$Res> extends _$LocaleStateCopyWithImpl<$Res>
    implements _$$_LocaleStateCopyWith<$Res> {
  __$$_LocaleStateCopyWithImpl(
      _$_LocaleState _value, $Res Function(_$_LocaleState) _then)
      : super(_value, (v) => _then(v as _$_LocaleState));

  @override
  _$_LocaleState get _value => super._value as _$_LocaleState;

  @override
  $Res call({
    Object? locale = freezed,
    Object? themeMode = freezed,
  }) {
    return _then(_$_LocaleState(
      locale: locale == freezed
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as Locale,
      themeMode: themeMode == freezed
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
    ));
  }
}

/// @nodoc

class _$_LocaleState implements _LocaleState {
  const _$_LocaleState(
      {this.locale = const Locale('en'), this.themeMode = ThemeMode.light});

  @override
  @JsonKey()
  final Locale locale;
  @override
  @JsonKey()
  final ThemeMode themeMode;

  @override
  String toString() {
    return 'LocaleState(locale: $locale, themeMode: $themeMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocaleState &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other.themeMode, themeMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(locale),
      const DeepCollectionEquality().hash(themeMode));

  @JsonKey(ignore: true)
  @override
  _$$_LocaleStateCopyWith<_$_LocaleState> get copyWith =>
      __$$_LocaleStateCopyWithImpl<_$_LocaleState>(this, _$identity);
}

abstract class _LocaleState implements LocaleState {
  const factory _LocaleState({final Locale locale, final ThemeMode themeMode}) =
      _$_LocaleState;

  @override
  Locale get locale => throw _privateConstructorUsedError;
  @override
  ThemeMode get themeMode => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_LocaleStateCopyWith<_$_LocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}
