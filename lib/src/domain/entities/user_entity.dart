import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity.base({required String email}) = UserBaseEntity;
  const factory UserEntity.get({required String id, required String email}) =
      UserGetEntity;
  const factory UserEntity.post(
      {required String email, required String password}) = UserPostEntity;
}
