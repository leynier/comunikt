import 'package:comunikt/src/core/constants.dart';
import 'package:comunikt/src/core/dependencies/dependencies.config.dart';
import 'package:comunikt/src/data/repositories/repositories.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:supabase/supabase.dart';

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() => $initGetIt(GetIt.I);

@module
abstract class RegisterModule {
  @lazySingleton
  Logger get logger {
    return Logger();
  }

  @lazySingleton
  SupabaseClient get supabaseClient {
    return SupabaseClient(
      Constants.supabaseUrl,
      Constants.supabaseKey,
    );
  }

  @Named(LocalRepository.boxName)
  @preResolve
  @lazySingleton
  Future<Box<String>> get localBox {
    return Hive.openBox(LocalRepository.boxName);
  }
}
