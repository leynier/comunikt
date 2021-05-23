import 'package:comunikt/src/domain/entities/error_entity.dart';
import 'package:comunikt/src/domain/entities/user_entity.dart';
import 'package:comunikt/src/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase/supabase.dart';

@LazySingleton(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final SupabaseClient supabaseClient;

  AuthRepository({required this.supabaseClient});

  @override
  Future<Either<UserGetEntity, ErrorEntity>> signIn(
      UserPostEntity entity) async {
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
      return Right(
        ErrorEntity(
          message: e.toString(),
          code: e.hashCode,
        ),
      );
    }
  }

  @override
  Future<Either<UserGetEntity, ErrorEntity>> signUp(
      UserPostEntity entity) async {
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
      return Right(
        ErrorEntity(
          message: e.toString(),
          code: e.hashCode,
        ),
      );
    }
  }
}
