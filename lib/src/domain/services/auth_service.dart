import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthService {
  Future<Either<UserGetEntity, ErrorEntity>> signIn(UserPostEntity entity);
  Future<Either<UserGetEntity, ErrorEntity>> signUp(UserPostEntity entity);
  Future<bool> signOut();
  Stream<AuthStatusEntity> get status;
  void dispose();
}

@LazySingleton(as: IAuthService)
class AuthService implements IAuthService {
  final IAuthRepository authRepository;

  AuthService({required this.authRepository});

  @override
  Future<Either<UserGetEntity, ErrorEntity>> signIn(UserPostEntity entity) =>
      authRepository.signIn(entity);

  @override
  Future<Either<UserGetEntity, ErrorEntity>> signUp(UserPostEntity entity) =>
      authRepository.signUp(entity);

  @override
  Future<bool> signOut() => authRepository.signOut();

  @override
  Stream<AuthStatusEntity> get status => authRepository.status;

  @override
  void dispose() => authRepository.dispose();
}
