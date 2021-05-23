import 'package:comunikt/src/core/app.dart';
import 'package:comunikt/src/core/constants.dart';
import 'package:comunikt/src/core/dependencies/dependencies.dart';
import 'package:comunikt/src/presentation/i18n/i18n.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as paths;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Beamer.setPathUrlStrategy();
  await configureDependencies();
  if (!kIsWeb) {
    Hive.init((await paths.getApplicationSupportDirectory()).path);
  }
  await EasyLocalization.ensureInitialized();
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
