import 'package:comunikt/src/core/app.dart';
import 'package:comunikt/src/core/constants.dart';
import 'package:comunikt/src/core/dependencies/dependencies.dart';
import 'package:comunikt/src/presentation/i18n/i18n.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Beamer.setPathUrlStrategy();
  if (!kIsWeb) {
    Hive.init((await getApplicationSupportDirectory()).path);
  }
  await configureDependencies();
  await EasyLocalization.ensureInitialized();
  Bloc.observer = GetIt.I<BlocObserver>();
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => EasyLocalization(
        supportedLocales: Constants.locales,
        path: 'assets/i18n',
        fallbackLocale: Constants.esLocale,
        assetLoader: const CodegenLoader(),
        child: App(),
      ),
    ),
  );
}
