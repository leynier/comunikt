import 'package:comunikt/src/domain/entities/entities.dart';

abstract class ILocalRepository {
  UserGetEntity? getUser();
  Future<bool> setUser(UserGetEntity entity);
  bool isAuthenticated();
  Future<bool> delUser();
}
