import 'package:comunikt/src/domain/entities/entities.dart';

abstract class AuthStatusEntity {
  const AuthStatusEntity();
}

class CheckingAuthStatusEntity extends AuthStatusEntity {
  const CheckingAuthStatusEntity();
}

class AuthenticatedAuthStatusEntity extends AuthStatusEntity {
  final UserGetEntity user;

  const AuthenticatedAuthStatusEntity({required this.user});
}

class UnauthenticatedAuthStatusEntity extends AuthStatusEntity {
  const UnauthenticatedAuthStatusEntity();
}
