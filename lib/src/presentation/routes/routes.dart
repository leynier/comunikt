import 'package:beamer/beamer.dart';
import 'package:comunikt/src/domain/services/services.dart';
import 'package:comunikt/src/presentation/routes/home_routes.dart';
import 'package:comunikt/src/presentation/routes/users_routes.dart';
import 'package:get_it/get_it.dart';

class Routes {
  static final routerDelegate = BeamerDelegate(
    guards: [
      BeamGuard(
        pathBlueprints: ['/users*'],
        check: (context, location) => GetIt.I<IAuthService>().isAuthenticated(),
        beamToNamed: '/',
      ),
    ],
    locationBuilder: BeamerLocationBuilder(
      beamLocations: [
        HomeLocation(),
        UsersLocation(),
      ],
    ),
  );

  static final routeInformationParser = BeamerParser();

  static final backButtonDispatcher = BeamerBackButtonDispatcher(
    delegate: routerDelegate,
  );
}
