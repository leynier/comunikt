import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

abstract class IAuthService {
  Future<Either<UserGetEntity, ErrorEntity>> signIn(UserPostEntity entity);
  Future<Either<UserGetEntity, ErrorEntity>> signUp(UserPostEntity entity);
  UserGetEntity? getUser();
  bool isAuthenticated();
}

@LazySingleton(as: IAuthService)
class AuthService implements IAuthService {
  final IAuthRepository authRepository;
  final ILocalRepository localRepository;

  AuthService({required this.authRepository, required this.localRepository});

  @override
  Future<Either<UserGetEntity, ErrorEntity>> signIn(
    UserPostEntity entity,
  ) async {
    final response = await authRepository.signIn(entity);
    response.fold(
      (user) async {
        await localRepository.setUser(user);
      },
      (error) async {
        await localRepository.delUser();
      },
    );
    return response;
  }

  @override
  Future<Either<UserGetEntity, ErrorEntity>> signUp(
      UserPostEntity entity) async {
    return authRepository.signUp(entity);
  }

  @override
  UserGetEntity? getUser() {
    return localRepository.getUser();
  }

  @override
  bool isAuthenticated() {
    return localRepository.isAuthenticated();
  }
}
