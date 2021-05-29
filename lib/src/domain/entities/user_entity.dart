abstract class UserBaseEntity {
  final String email;

  const UserBaseEntity({required this.email});
}

class UserGetEntity extends UserBaseEntity {
  final String id;

  const UserGetEntity({required this.id, required String email})
      : super(email: email);
}

class UserPostEntity extends UserBaseEntity {
  final String password;

  const UserPostEntity({required String email, required this.password})
      : super(email: email);
}
