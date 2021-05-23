// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_get_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserGetModel _$UserGetModelFromJson(Map<String, dynamic> json) {
  return _UserGetModel.fromJson(json);
}

/// @nodoc
class _$UserGetModelTearOff {
  const _$UserGetModelTearOff();

  _UserGetModel call({required String id, required String email}) {
    return _UserGetModel(
      id: id,
      email: email,
    );
  }

  UserGetModel fromJson(Map<String, Object> json) {
    return UserGetModel.fromJson(json);
  }
}

/// @nodoc
const $UserGetModel = _$UserGetModelTearOff();

/// @nodoc
mixin _$UserGetModel {
  String get id => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserGetModelCopyWith<UserGetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserGetModelCopyWith<$Res> {
  factory $UserGetModelCopyWith(
          UserGetModel value, $Res Function(UserGetModel) then) =
      _$UserGetModelCopyWithImpl<$Res>;
  $Res call({String id, String email});
}

/// @nodoc
class _$UserGetModelCopyWithImpl<$Res> implements $UserGetModelCopyWith<$Res> {
  _$UserGetModelCopyWithImpl(this._value, this._then);

  final UserGetModel _value;
  // ignore: unused_field
  final $Res Function(UserGetModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserGetModelCopyWith<$Res>
    implements $UserGetModelCopyWith<$Res> {
  factory _$UserGetModelCopyWith(
          _UserGetModel value, $Res Function(_UserGetModel) then) =
      __$UserGetModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String email});
}

/// @nodoc
class __$UserGetModelCopyWithImpl<$Res> extends _$UserGetModelCopyWithImpl<$Res>
    implements _$UserGetModelCopyWith<$Res> {
  __$UserGetModelCopyWithImpl(
      _UserGetModel _value, $Res Function(_UserGetModel) _then)
      : super(_value, (v) => _then(v as _UserGetModel));

  @override
  _UserGetModel get _value => super._value as _UserGetModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? email = freezed,
  }) {
    return _then(_UserGetModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserGetModel implements _UserGetModel {
  const _$_UserGetModel({required this.id, required this.email});

  factory _$_UserGetModel.fromJson(Map<String, dynamic> json) =>
      _$_$_UserGetModelFromJson(json);

  @override
  final String id;
  @override
  final String email;

  @override
  String toString() {
    return 'UserGetModel(id: $id, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserGetModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  _$UserGetModelCopyWith<_UserGetModel> get copyWith =>
      __$UserGetModelCopyWithImpl<_UserGetModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserGetModelToJson(this);
  }
}

abstract class _UserGetModel implements UserGetModel {
  const factory _UserGetModel({required String id, required String email}) =
      _$_UserGetModel;

  factory _UserGetModel.fromJson(Map<String, dynamic> json) =
      _$_UserGetModel.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserGetModelCopyWith<_UserGetModel> get copyWith =>
      throw _privateConstructorUsedError;
}
