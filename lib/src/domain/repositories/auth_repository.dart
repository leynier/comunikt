import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:dartz/dartz.dart';

abstract class IAuthRepository {
  Future<Either<UserGetEntity, ErrorEntity>> signIn(UserPostEntity entity);
  Future<Either<UserGetEntity, ErrorEntity>> signUp(UserPostEntity entity);
  Future<Either<bool, ErrorEntity>> resetPassword(String email);
  Future<bool> signOut();
  Stream<AuthStatusEntity> get status;
  void dispose();
}
