import 'package:beamer/beamer.dart';
import 'package:comunikt/src/domain/services/services.dart';
import 'package:comunikt/src/presentation/routes/auth_routes.dart';
import 'package:comunikt/src/presentation/routes/home_routes.dart';
import 'package:comunikt/src/presentation/routes/not_found_routes.dart';
import 'package:comunikt/src/presentation/routes/users_routes.dart';
import 'package:get_it/get_it.dart';

class Routes {
  static final routerDelegate = BeamerDelegate(
    guards: [
      BeamGuard(
        pathBlueprints: ['/login'],
        check: (context, location) =>
            GetIt.I<ILocalService>().getUser() != null,
        beamToNamed: '/login',
        guardNonMatching: true,
      ),
    ],
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeRoutes(),
        UsersRoutes(),
        AuthRoutes(),
        NotFoundRoutes(),
      ],
    ),
  );

  static final routeInformationParser = BeamerParser();

  static final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
  );
}
