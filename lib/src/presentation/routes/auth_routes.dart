import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

class AuthRoutes extends BeamLocation {
  @override
  List<String> get pathBlueprints => ['/login', '/register', '/resetpassword'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      LoginPage.getPage(),
      if (state.uri.pathSegments.contains('register')) RegisterPage.getPage(),
      if (state.uri.pathSegments.contains('resetpassword'))
        ResetPasswordPage.getPage(),
    ];
  }
}
