// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterEventTearOff {
  const _$RegisterEventTearOff();

  _EmailChanged emailChanged({required String email}) {
    return _EmailChanged(
      email: email,
    );
  }

  _PasswordChanged passwordChanged({required String password}) {
    return _PasswordChanged(
      password: password,
    );
  }

  _ConfirmPasswordChanged confirmPasswordChanged(
      {required String confirmPassword}) {
    return _ConfirmPasswordChanged(
      confirmPassword: confirmPassword,
    );
  }

  _Submit submit() {
    return const _Submit();
  }
}

/// @nodoc
const $RegisterEvent = _$RegisterEventTearOff();

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  final RegisterEvent _value;
  // ignore: unused_field
  final $Res Function(RegisterEvent) _then;
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
    extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.emailChanged(email: $email)';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class _EmailChanged implements RegisterEvent {
  const factory _EmailChanged({required String email}) = _$_EmailChanged;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$EmailChangedCopyWith<_EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PasswordChangedCopyWith<$Res> {
  factory _$PasswordChangedCopyWith(
          _PasswordChanged value, $Res Function(_PasswordChanged) then) =
      __$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String password});
}

/// @nodoc
class __$PasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$PasswordChangedCopyWith<$Res> {
  __$PasswordChangedCopyWithImpl(
      _PasswordChanged _value, $Res Function(_PasswordChanged) _then)
      : super(_value, (v) => _then(v as _PasswordChanged));

  @override
  _PasswordChanged get _value => super._value as _PasswordChanged;

  @override
  $Res call({
    Object? password = freezed,
  }) {
    return _then(_PasswordChanged(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PasswordChanged implements _PasswordChanged {
  const _$_PasswordChanged({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'RegisterEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PasswordChanged &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      __$PasswordChangedCopyWithImpl<_PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class _PasswordChanged implements RegisterEvent {
  const factory _PasswordChanged({required String password}) =
      _$_PasswordChanged;

  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PasswordChangedCopyWith<_PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConfirmPasswordChangedCopyWith<$Res> {
  factory _$ConfirmPasswordChangedCopyWith(_ConfirmPasswordChanged value,
          $Res Function(_ConfirmPasswordChanged) then) =
      __$ConfirmPasswordChangedCopyWithImpl<$Res>;
  $Res call({String confirmPassword});
}

/// @nodoc
class __$ConfirmPasswordChangedCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res>
    implements _$ConfirmPasswordChangedCopyWith<$Res> {
  __$ConfirmPasswordChangedCopyWithImpl(_ConfirmPasswordChanged _value,
      $Res Function(_ConfirmPasswordChanged) _then)
      : super(_value, (v) => _then(v as _ConfirmPasswordChanged));

  @override
  _ConfirmPasswordChanged get _value => super._value as _ConfirmPasswordChanged;

  @override
  $Res call({
    Object? confirmPassword = freezed,
  }) {
    return _then(_ConfirmPasswordChanged(
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConfirmPasswordChanged implements _ConfirmPasswordChanged {
  const _$_ConfirmPasswordChanged({required this.confirmPassword});

  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RegisterEvent.confirmPasswordChanged(confirmPassword: $confirmPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmPasswordChanged &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(confirmPassword);

  @JsonKey(ignore: true)
  @override
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith =>
      __$ConfirmPasswordChangedCopyWithImpl<_ConfirmPasswordChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) {
    return confirmPasswordChanged(confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
    TResult Function()? submit,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailChanged value) emailChanged,
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return confirmPasswordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (confirmPasswordChanged != null) {
      return confirmPasswordChanged(this);
    }
    return orElse();
  }
}

abstract class _ConfirmPasswordChanged implements RegisterEvent {
  const factory _ConfirmPasswordChanged({required String confirmPassword}) =
      _$_ConfirmPasswordChanged;

  String get confirmPassword => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ConfirmPasswordChangedCopyWith<_ConfirmPasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SubmitCopyWith<$Res> {
  factory _$SubmitCopyWith(_Submit value, $Res Function(_Submit) then) =
      __$SubmitCopyWithImpl<$Res>;
}

/// @nodoc
class __$SubmitCopyWithImpl<$Res> extends _$RegisterEventCopyWithImpl<$Res>
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
    return 'RegisterEvent.submit()';
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
    required TResult Function(String password) passwordChanged,
    required TResult Function(String confirmPassword) confirmPasswordChanged,
    required TResult Function() submit,
  }) {
    return submit();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function(String confirmPassword)? confirmPasswordChanged,
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
    required TResult Function(_PasswordChanged value) passwordChanged,
    required TResult Function(_ConfirmPasswordChanged value)
        confirmPasswordChanged,
    required TResult Function(_Submit value) submit,
  }) {
    return submit(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailChanged value)? emailChanged,
    TResult Function(_PasswordChanged value)? passwordChanged,
    TResult Function(_ConfirmPasswordChanged value)? confirmPasswordChanged,
    TResult Function(_Submit value)? submit,
    required TResult orElse(),
  }) {
    if (submit != null) {
      return submit(this);
    }
    return orElse();
  }
}

abstract class _Submit implements RegisterEvent {
  const factory _Submit() = _$_Submit;
}

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterState call(
      {FormzStatus status = FormzStatus.pure,
      EmailInput email = const EmailInput.pure(),
      PasswordInput password = const PasswordInput.pure(),
      ConfirmPasswordInput confirmPassword =
          const ConfirmPasswordInput.pure(''),
      ErrorEntity? error = null}) {
    return _RegisterState(
      status: status,
      email: email,
      password: password,
      confirmPassword: confirmPassword,
      error: error,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  FormzStatus get status => throw _privateConstructorUsedError;
  EmailInput get email => throw _privateConstructorUsedError;
  PasswordInput get password => throw _privateConstructorUsedError;
  ConfirmPasswordInput get confirmPassword =>
      throw _privateConstructorUsedError;
  ErrorEntity? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call(
      {FormzStatus status,
      EmailInput email,
      PasswordInput password,
      ConfirmPasswordInput confirmPassword,
      ErrorEntity? error});

  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
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
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordInput,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }

  @override
  $ErrorEntityCopyWith<$Res>? get error {
    if (_value.error == null) {
      return null;
    }

    return $ErrorEntityCopyWith<$Res>(_value.error!, (value) {
      return _then(_value.copyWith(error: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {FormzStatus status,
      EmailInput email,
      PasswordInput password,
      ConfirmPasswordInput confirmPassword,
      ErrorEntity? error});

  @override
  $ErrorEntityCopyWith<$Res>? get error;
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? status = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? confirmPassword = freezed,
    Object? error = freezed,
  }) {
    return _then(_RegisterState(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as EmailInput,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as PasswordInput,
      confirmPassword: confirmPassword == freezed
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
              as ConfirmPasswordInput,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as ErrorEntity?,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState(
      {this.status = FormzStatus.pure,
      this.email = const EmailInput.pure(),
      this.password = const PasswordInput.pure(),
      this.confirmPassword = const ConfirmPasswordInput.pure(''),
      this.error = null})
      : assert(status != FormzStatus.submissionFailure || error != null,
            'When status of submission is failure error cant be null.');

  @JsonKey(defaultValue: FormzStatus.pure)
  @override
  final FormzStatus status;
  @JsonKey(defaultValue: const EmailInput.pure())
  @override
  final EmailInput email;
  @JsonKey(defaultValue: const PasswordInput.pure())
  @override
  final PasswordInput password;
  @JsonKey(defaultValue: const ConfirmPasswordInput.pure(''))
  @override
  final ConfirmPasswordInput confirmPassword;
  @JsonKey(defaultValue: null)
  @override
  final ErrorEntity? error;

  @override
  String toString() {
    return 'RegisterState(status: $status, email: $email, password: $password, confirmPassword: $confirmPassword, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.confirmPassword, confirmPassword) ||
                const DeepCollectionEquality()
                    .equals(other.confirmPassword, confirmPassword)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(confirmPassword) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);
}

abstract class _RegisterState implements RegisterState {
  const factory _RegisterState(
      {FormzStatus status,
      EmailInput email,
      PasswordInput password,
      ConfirmPasswordInput confirmPassword,
      ErrorEntity? error}) = _$_RegisterState;

  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  EmailInput get email => throw _privateConstructorUsedError;
  @override
  PasswordInput get password => throw _privateConstructorUsedError;
  @override
  ConfirmPasswordInput get confirmPassword =>
      throw _privateConstructorUsedError;
  @override
  ErrorEntity? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}
