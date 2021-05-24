import 'dart:async';

import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase/supabase.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final SupabaseClient supabaseClient;
  final Logger logger;

  final _controller = StreamController<AuthStatusEntity>();

  AuthRepository({required this.supabaseClient, required this.logger}) {
    supabaseClient.auth.onAuthStateChange((event, session) {
      switch (event) {
        case AuthChangeEvent.signedIn:
        case AuthChangeEvent.userUpdated:
        case AuthChangeEvent.passwordRecovery:
          if (session != null && session.user != null) {
            _controller.add(
              AuthStatusEntity.authenticated(
                user: UserGetEntity(
                  id: session.user!.id,
                  email: session.user!.email,
                ),
              ),
            );
          } else {
            _controller.add(const AuthStatusEntity.unauthenticated());
          }
          break;
        case AuthChangeEvent.signedOut:
          _controller.add(const AuthStatusEntity.unauthenticated());
          break;
      }
    });
  }

  @override
  Future<Either<UserGetEntity, ErrorEntity>> signIn(
    UserPostEntity entity,
  ) async {
    try {
      final response = await supabaseClient.auth.signIn(
        email: entity.email,
        password: entity.password,
      );
      if (response.error != null) {
        return Right(
          ErrorEntity(
            message: response.error!.message,
            code: response.error.hashCode,
          ),
        );
      }
      return Left(UserGetEntity(
        id: response.user!.id,
        email: response.user!.email,
      ));
    } catch (e) {
      logger.e(e.toString());
      return Right(
        ErrorEntity(
          message: e.toString(),
          code: e.hashCode,
        ),
      );
    }
  }

  @override
  Future<Either<bool, ErrorEntity>> signUp(
    UserPostEntity entity,
  ) async {
    try {
      final response = await supabaseClient.auth.signUp(
        entity.email,
        entity.password,
      );
      if (response.error != null) {
        return Right(
          ErrorEntity(
            message: response.error!.message,
            code: response.error.hashCode,
          ),
        );
      }
      return const Left(true);
    } catch (e) {
      logger.e(e.toString());
      return Right(
        ErrorEntity(
          message: e.toString(),
          code: e.hashCode,
        ),
      );
    }
  }

  @override
  Future<bool> signOut() async {
    try {
      supabaseClient.auth.signOut();
      return true;
    } catch (e) {
      logger.e(e.toString());
      return false;
    }
  }

  @override
  Stream<AuthStatusEntity> get status => _controller.stream;

  @override
  void dispose() => _controller.close();

  @override
  Future<Either<bool, ErrorEntity>> resetPassword(String email) async {
    try {
      final response =
          await supabaseClient.auth.api.resetPasswordForEmail(email);
      if (response.error != null) {
        return Right(
          ErrorEntity(
            message: response.error!.message,
            code: response.error.hashCode,
          ),
        );
      }
      return const Left(true);
    } catch (e) {
      logger.e(e.toString());
      return Right(
        ErrorEntity(
          message: e.toString(),
          code: e.hashCode,
        ),
      );
    }
  }
}
