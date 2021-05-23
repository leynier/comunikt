import 'package:comunikt/src/core/constants.dart';
import 'package:comunikt/src/presentation/routes/routes.dart';
import 'package:comunikt/src/presentation/theming/theming.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp.router(
      title: Constants.appName,
      theme: Themes.light,
      darkTheme: Themes.dark,
      themeMode: Themes.themeMode,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      routerDelegate: Routes.routerDelegate,
      routeInformationParser: Routes.routeInformationParser,
      backButtonDispatcher: Routes.backButtonDispatcher,
    );
  }
}
