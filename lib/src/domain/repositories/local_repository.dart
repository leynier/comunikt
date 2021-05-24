import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/enums/enums.dart';

abstract class ILocalRepository {
  // User
  UserGetEntity? getUser();
  Future<bool> setUser(UserGetEntity entity);
  Future<bool> delUser();
  Future<bool> recoverSession();

  // Theming
  ThemingMode getThemeMode();
  Future<bool> setThemeMode(ThemingMode themeMode);
}
