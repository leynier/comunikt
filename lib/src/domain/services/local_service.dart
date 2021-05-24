import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/enums/enums.dart';
import 'package:comunikt/src/domain/repositories/local_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ILocalService {
  // User
  UserGetEntity? getUser();
  Future<bool> setUser(UserGetEntity entity);
  Future<bool> delUser();
  Future<bool> recoverSession();

  // Theming
  ThemingMode getThemeMode();
  Future<bool> setThemeMode(ThemingMode themeMode);
}

@LazySingleton(as: ILocalService)
class LocalService implements ILocalService {
  final ILocalRepository localRepository;

  LocalService({required this.localRepository});

  @override
  Future<bool> delUser() => localRepository.delUser();

  @override
  UserGetEntity? getUser() => localRepository.getUser();

  @override
  Future<bool> recoverSession() => localRepository.recoverSession();

  @override
  Future<bool> setUser(UserGetEntity entity) => localRepository.setUser(entity);

  @override
  ThemingMode getThemeMode() => localRepository.getThemeMode();

  @override
  Future<bool> setThemeMode(ThemingMode themeMode) =>
      localRepository.setThemeMode(themeMode);
}
