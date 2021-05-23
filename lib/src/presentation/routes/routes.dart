import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/routes/home_routes.dart';
import 'package:comunikt/src/presentation/routes/users_routes.dart';

class Routes {
  static final routerDelegate = BeamerDelegate(
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
