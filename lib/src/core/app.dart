import 'package:beamer/beamer.dart';
import 'package:comunikt/src/core/constants.dart';
import 'package:comunikt/src/presentation/blocs/blocs.dart';
import 'package:comunikt/src/presentation/routes/routes.dart';
import 'package:device_preview/device_preview.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<IAuthBloc>(
          create: (_) => GetIt.I()..add(const AuthEvent.start()),
        ),
        BlocProvider<IThemingBloc>(create: (_) => GetIt.I())
      ],
      child: BeamerProvider(
        routerDelegate: Routes.routerDelegate,
        child: BlocBuilder<IThemingBloc, ThemingState>(
          builder: (context, state) {
            return MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: Constants.appName,
              theme: state.light,
              darkTheme: state.dark,
              themeMode: state.mode,
              locale: DevicePreview.locale(context),
              builder: (context, child) {
                return BlocListener<IAuthBloc, AuthState>(
                  listener: (context, state) {
                    state.when(
                      initial: () {},
                      authenticated: (user) {},
                      unauthenticated: () {
                        context.beamToNamed('/login');
                      },
                    );
                  },
                  child: DevicePreview.appBuilder(context, child),
                );
              },
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              routerDelegate: Routes.routerDelegate,
              routeInformationParser: Routes.routeInformationParser,
              backButtonDispatcher: Routes.backButtonDispatcher,
            );
          },
        ),
      ),
    );
  }
}
