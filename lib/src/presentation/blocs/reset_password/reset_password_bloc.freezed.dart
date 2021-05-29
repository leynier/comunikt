// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reset_password_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ResetPasswordEventTearOff {
  const _$ResetPasswordEventTearOff();

  _EmailChanged emailChanged({required String email}) {
    return _EmailChanged(
      email: email,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
const $ResetPasswordEvent = _$ResetPasswordEventTearOff();

/// @nodoc
mixin _$ResetPasswordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordEventCopyWith<$Res> {
  factory $ResetPasswordEventCopyWith(
          ResetPasswordEvent value, $Res Function(ResetPasswordEvent) then) =
      _$ResetPasswordEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetPasswordEventCopyWithImpl<$Res>
    implements $ResetPasswordEventCopyWith<$Res> {
  _$ResetPasswordEventCopyWithImpl(this._value, this._then);

  final ResetPasswordEvent _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordEvent) _then;
}

/// @nodoc
abstract class _$EmailChangedCopyWith<$Res> {
  factory _$EmailChangedCopyWith(
          _EmailChanged value, $Res Function(_EmailChanged) then) =
      __$EmailChangedCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class __$EmailChangedCopyWithImpl<$Res>
    extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$EmailChangedCopyWith<$Res> {
  __$EmailChangedCopyWithImpl(
      _EmailChanged _value, $Res Function(_EmailChanged) _then)
      : super(_value, (v) => _then(v as _EmailChanged));

  @override
  _EmailChanged get _value => super._value as _EmailChanged;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(_EmailChanged(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EmailChanged implements _EmailChanged {
  const _$_EmailChanged({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'ResetPasswordEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EmailChanged &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      __$EmailChangedCopyWithImpl<_EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() submit,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements ResetPasswordEvent {
  const factory _EmailChanged({required String email}) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$ResetPasswordEventCopyWithImpl<$Res>
    implements _$SubmitCopyWith<$Res> {
  __$SubmitCopyWithImpl(_Submit _value, $Res Function(_Submit) _then)
      : super(_value, (v) => _then(v as _Submit));

  @override
  _Submit get _value => super._value as _Submit;
}

/// @nodoc

class _$_Submit implements _Submit {
  const _$_Submit();

  @override
  String toString() {
    return 'ResetPasswordEvent.submit()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Submit);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements ResetPasswordEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$ResetPasswordStateTearOff {
  const _$ResetPasswordStateTearOff();

  _ResetPasswordState call(
      {FormzStatus status = FormzStatus.pure,
      EmailInput email = const EmailInput.pure(),
      ErrorEntity? error = null}) {
    return _ResetPasswordState(
      status: status,
      email: email,
      error: error,
    );
  }
}

/// @nodoc
const $ResetPasswordState = _$ResetPasswordStateTearOff();

/// @nodoc
mixin _$ResetPasswordState {
  FormzStatus get status => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  ErrorEntity? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResetPasswordStateCopyWith<ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetPasswordStateCopyWith<$Res> {
  factory $ResetPasswordStateCopyWith(
          ResetPasswordState value, $Res Function(ResetPasswordState) then) =
      _$ResetPasswordStateCopyWithImpl<$Res>;
  $Res call({FormzStatus status, EmailInput email, ErrorEntity? error});
}

/// @nodoc
class _$ResetPasswordStateCopyWithImpl<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  _$ResetPasswordStateCopyWithImpl(this._value, this._then);

  final ResetPasswordState _value;
  // ignore: unused_field
  final $Res Function(ResetPasswordState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc
abstract class _$ResetPasswordStateCopyWith<$Res>
    implements $ResetPasswordStateCopyWith<$Res> {
  factory _$ResetPasswordStateCopyWith(
          _ResetPasswordState value, $Res Function(_ResetPasswordState) then) =
      __$ResetPasswordStateCopyWithImpl<$Res>;
  @override
  $Res call({FormzStatus status, EmailInput email, ErrorEntity? error});
}

/// @nodoc
class __$ResetPasswordStateCopyWithImpl<$Res>
    extends _$ResetPasswordStateCopyWithImpl<$Res>
    implements _$ResetPasswordStateCopyWith<$Res> {
  __$ResetPasswordStateCopyWithImpl(
      _ResetPasswordState _value, $Res Function(_ResetPasswordState) _then)
      : super(_value, (v) => _then(v as _ResetPasswordState));

  @override
  _ResetPasswordState get _value => super._value as _ResetPasswordState;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
    Object? error = freezed,
  }) {
    return _then(_ResetPasswordState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc

class _$_ResetPasswordState implements _ResetPasswordState {
  const _$_ResetPasswordState(
      {this.status = FormzStatus.pure,
      this.email = const EmailInput.pure(),
      this.error = null})
      : assert(status != FormzStatus.submissionFailure || error != null,
            'When status of submission is failure error cant be null.');

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;
  @JsonKey(defaultValue: const EmailInput.pure())
  @override
  final EmailInput email;
  @JsonKey(defaultValue: null)
  @override
  final ErrorEntity? error;

  @override
  String toString() {
    return 'ResetPasswordState(status: $status, email: $email, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ResetPasswordState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      __$ResetPasswordStateCopyWithImpl<_ResetPasswordState>(this, _$identity);
}

abstract class _ResetPasswordState implements ResetPasswordState {
  const factory _ResetPasswordState(
      {FormzStatus status,
      EmailInput email,
      ErrorEntity? error}) = _$_ResetPasswordState;

  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  EmailInput get email => throw _privateConstructorUsedError;
  @override
  ErrorEntity? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ResetPasswordStateCopyWith<_ResetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}
