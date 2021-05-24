// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_bloc/flutter_bloc.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i3;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i8;
import 'package:supabase/supabase.dart' as _i9;

import '../../data/repositories/auth_repository.dart' as _i13;
import '../../data/repositories/local_repository.dart' as _i15;
import '../../domain/repositories/local_repository.dart' as _i5;
import '../../domain/repositories/repositories.dart' as _i12;
import '../../domain/services/auth_service.dart' as _i14;
import '../../domain/services/local_service.dart' as _i4;
import '../../domain/services/services.dart' as _i7;
import '../../presentation/blocs/auth/auth_bloc.dart' as _i16;
import '../../presentation/blocs/login/login_bloc.dart' as _i6;
import '../../presentation/blocs/theming/theming_bloc.dart' as _i17;
import '../utils/simple_bloc_observer.dart' as _i11;
import 'dependencies.dart' as _i18; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  await gh.lazySingletonAsync<_i3.Box<String>>(() => registerModule.localBox,
      instanceName: 'local', preResolve: true);
  gh.lazySingleton<_i4.ILocalService>(
      () => _i4.LocalService(localRepository: get<_i5.ILocalRepository>()));
  gh.factory<_i6.ILoginBloc>(
      () => _i6.LoginBloc(authService: get<_i7.IAuthService>()));
  gh.lazySingleton<_i8.Logger>(() => registerModule.logger);
  gh.lazySingleton<_i9.SupabaseClient>(() => registerModule.supabaseClient);
  gh.lazySingleton<_i10.BlocObserver>(
      () => _i11.SimpleBlocObserver(logger: get<_i8.Logger>()));
  gh.lazySingleton<_i12.IAuthRepository>(() => _i13.AuthRepository(
      supabaseClient: get<_i9.SupabaseClient>(), logger: get<_i8.Logger>()));
  gh.lazySingleton<_i14.IAuthService>(
      () => _i14.AuthService(authRepository: get<_i12.IAuthRepository>()));
  gh.lazySingleton<_i12.ILocalRepository>(() => _i15.LocalRepository(
      box: get<_i3.Box<String>>(instanceName: 'local'),
      logger: get<_i8.Logger>(),
      supabaseClient: get<_i9.SupabaseClient>()));
  gh.singleton<_i16.IAuthBloc>(_i16.AuthBloc(
      authService: get<_i7.IAuthService>(),
      localService: get<_i7.ILocalService>()));
  gh.singleton<_i17.IThemingBloc>(
      _i17.ThemingBloc(localRepository: get<_i12.ILocalRepository>()));
  return get;
}

class _$RegisterModule extends _i18.RegisterModule {}
