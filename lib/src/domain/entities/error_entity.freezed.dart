// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'error_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ErrorEntityTearOff {
  const _$ErrorEntityTearOff();

  _ErrorEntity call({required int code, required String message}) {
    return _ErrorEntity(
      code: code,
      message: message,
    );
  }
}

/// @nodoc
const $ErrorEntity = _$ErrorEntityTearOff();

/// @nodoc
mixin _$ErrorEntity {
  int get code => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ErrorEntityCopyWith<ErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorEntityCopyWith<$Res> {
  factory $ErrorEntityCopyWith(
          ErrorEntity value, $Res Function(ErrorEntity) then) =
      _$ErrorEntityCopyWithImpl<$Res>;
  $Res call({int code, String message});
}

/// @nodoc
class _$ErrorEntityCopyWithImpl<$Res> implements $ErrorEntityCopyWith<$Res> {
  _$ErrorEntityCopyWithImpl(this._value, this._then);

  final ErrorEntity _value;
  // ignore: unused_field
  final $Res Function(ErrorEntity) _then;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorEntityCopyWith<$Res>
    implements $ErrorEntityCopyWith<$Res> {
  factory _$ErrorEntityCopyWith(
          _ErrorEntity value, $Res Function(_ErrorEntity) then) =
      __$ErrorEntityCopyWithImpl<$Res>;
  @override
  $Res call({int code, String message});
}

/// @nodoc
class __$ErrorEntityCopyWithImpl<$Res> extends _$ErrorEntityCopyWithImpl<$Res>
    implements _$ErrorEntityCopyWith<$Res> {
  __$ErrorEntityCopyWithImpl(
      _ErrorEntity _value, $Res Function(_ErrorEntity) _then)
      : super(_value, (v) => _then(v as _ErrorEntity));

  @override
  _ErrorEntity get _value => super._value as _ErrorEntity;

  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
  }) {
    return _then(_ErrorEntity(
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorEntity implements _ErrorEntity {
  const _$_ErrorEntity({required this.code, required this.message});

  @override
  final int code;
  @override
  final String message;

  @override
  String toString() {
    return 'ErrorEntity(code: $code, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorEntity &&
            (identical(other.code, code) ||
                const DeepCollectionEquality().equals(other.code, code)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(code) ^
      const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  _$ErrorEntityCopyWith<_ErrorEntity> get copyWith =>
      __$ErrorEntityCopyWithImpl<_ErrorEntity>(this, _$identity);
}

abstract class _ErrorEntity implements ErrorEntity {
  const factory _ErrorEntity({required int code, required String message}) =
      _$_ErrorEntity;

  @override
  int get code => throw _privateConstructorUsedError;
  @override
  String get message => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorEntityCopyWith<_ErrorEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
