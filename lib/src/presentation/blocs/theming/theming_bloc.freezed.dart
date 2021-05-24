// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'theming_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ThemingEventTearOff {
  const _$ThemingEventTearOff();

  _Change change() {
    return const _Change();
  }
}

/// @nodoc
const $ThemingEvent = _$ThemingEventTearOff();

/// @nodoc
mixin _$ThemingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Change value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Change value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemingEventCopyWith<$Res> {
  factory $ThemingEventCopyWith(
          ThemingEvent value, $Res Function(ThemingEvent) then) =
      _$ThemingEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ThemingEventCopyWithImpl<$Res> implements $ThemingEventCopyWith<$Res> {
  _$ThemingEventCopyWithImpl(this._value, this._then);

  final ThemingEvent _value;
  // ignore: unused_field
  final $Res Function(ThemingEvent) _then;
}

/// @nodoc
abstract class _$ChangeCopyWith<$Res> {
  factory _$ChangeCopyWith(_Change value, $Res Function(_Change) then) =
      __$ChangeCopyWithImpl<$Res>;
}

/// @nodoc
class __$ChangeCopyWithImpl<$Res> extends _$ThemingEventCopyWithImpl<$Res>
    implements _$ChangeCopyWith<$Res> {
  __$ChangeCopyWithImpl(_Change _value, $Res Function(_Change) _then)
      : super(_value, (v) => _then(v as _Change));

  @override
  _Change get _value => super._value as _Change;
}

/// @nodoc

class _$_Change implements _Change {
  const _$_Change();

  @override
  String toString() {
    return 'ThemingEvent.change()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Change);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() change,
  }) {
    return change();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Change value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Change value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _Change implements ThemingEvent {
  const factory _Change() = _$_Change;
}

/// @nodoc
class _$ThemingStateTearOff {
  const _$ThemingStateTearOff();

  _ThemingState call(
      {required ThemeMode mode,
      required ThemeData dark,
      required ThemeData light}) {
    return _ThemingState(
      mode: mode,
      dark: dark,
      light: light,
    );
  }
}

/// @nodoc
const $ThemingState = _$ThemingStateTearOff();

/// @nodoc
mixin _$ThemingState {
  ThemeMode get mode => throw _privateConstructorUsedError;
  ThemeData get dark => throw _privateConstructorUsedError;
  ThemeData get light => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ThemingStateCopyWith<ThemingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemingStateCopyWith<$Res> {
  factory $ThemingStateCopyWith(
          ThemingState value, $Res Function(ThemingState) then) =
      _$ThemingStateCopyWithImpl<$Res>;
  $Res call({ThemeMode mode, ThemeData dark, ThemeData light});
}

/// @nodoc
class _$ThemingStateCopyWithImpl<$Res> implements $ThemingStateCopyWith<$Res> {
  _$ThemingStateCopyWithImpl(this._value, this._then);

  final ThemingState _value;
  // ignore: unused_field
  final $Res Function(ThemingState) _then;

  @override
  $Res call({
    Object? mode = freezed,
    Object? dark = freezed,
    Object? light = freezed,
  }) {
    return _then(_value.copyWith(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      dark: dark == freezed
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      light: light == freezed
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc
abstract class _$ThemingStateCopyWith<$Res>
    implements $ThemingStateCopyWith<$Res> {
  factory _$ThemingStateCopyWith(
          _ThemingState value, $Res Function(_ThemingState) then) =
      __$ThemingStateCopyWithImpl<$Res>;
  @override
  $Res call({ThemeMode mode, ThemeData dark, ThemeData light});
}

/// @nodoc
class __$ThemingStateCopyWithImpl<$Res> extends _$ThemingStateCopyWithImpl<$Res>
    implements _$ThemingStateCopyWith<$Res> {
  __$ThemingStateCopyWithImpl(
      _ThemingState _value, $Res Function(_ThemingState) _then)
      : super(_value, (v) => _then(v as _ThemingState));

  @override
  _ThemingState get _value => super._value as _ThemingState;

  @override
  $Res call({
    Object? mode = freezed,
    Object? dark = freezed,
    Object? light = freezed,
  }) {
    return _then(_ThemingState(
      mode: mode == freezed
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as ThemeMode,
      dark: dark == freezed
          ? _value.dark
          : dark // ignore: cast_nullable_to_non_nullable
              as ThemeData,
      light: light == freezed
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as ThemeData,
    ));
  }
}

/// @nodoc

class _$_ThemingState implements _ThemingState {
  const _$_ThemingState(
      {required this.mode, required this.dark, required this.light});

  @override
  final ThemeMode mode;
  @override
  final ThemeData dark;
  @override
  final ThemeData light;

  @override
  String toString() {
    return 'ThemingState(mode: $mode, dark: $dark, light: $light)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ThemingState &&
            (identical(other.mode, mode) ||
                const DeepCollectionEquality().equals(other.mode, mode)) &&
            (identical(other.dark, dark) ||
                const DeepCollectionEquality().equals(other.dark, dark)) &&
            (identical(other.light, light) ||
                const DeepCollectionEquality().equals(other.light, light)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(mode) ^
      const DeepCollectionEquality().hash(dark) ^
      const DeepCollectionEquality().hash(light);

  @JsonKey(ignore: true)
  @override
  _$ThemingStateCopyWith<_ThemingState> get copyWith =>
      __$ThemingStateCopyWithImpl<_ThemingState>(this, _$identity);
}

abstract class _ThemingState implements ThemingState {
  const factory _ThemingState(
      {required ThemeMode mode,
      required ThemeData dark,
      required ThemeData light}) = _$_ThemingState;

  @override
  ThemeMode get mode => throw _privateConstructorUsedError;
  @override
  ThemeData get dark => throw _privateConstructorUsedError;
  @override
  ThemeData get light => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ThemingStateCopyWith<_ThemingState> get copyWith =>
      throw _privateConstructorUsedError;
}
