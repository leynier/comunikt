// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;
import 'package:supabase/supabase.dart' as _i5;

import '../../data/repositories/auth_repository.dart' as _i7;
import '../../data/repositories/local_repository.dart' as _i8;
import '../../domain/repositories/repositories.dart' as _i6;
import '../../domain/services/auth_service.dart' as _i9;
import 'dependencies.dart' as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.lazySingletonAsync<_i3.Box<String>>(() => registerModule.localBox,
      instanceName: 'local', preResolve: true);
  gh.lazySingleton<_i4.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i5.SupabaseClient>(() => registerModule.supabaseClient);
  gh.lazySingleton<_i6.IAuthRepository>(
      () => _i7.AuthRepository(supabaseClient: get<_i5.SupabaseClient>()));
  gh.lazySingleton<_i6.ILocalRepository>(() => _i8.LocalRepository(
      box: get<_i3.Box<String>>(instanceName: 'local'),
      logger: get<_i4.Logger>()));
  gh.lazySingleton<_i9.IAuthService>(() => _i9.AuthService(
      authRepository: get<_i6.IAuthRepository>(),
      localRepository: get<_i6.ILocalRepository>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
