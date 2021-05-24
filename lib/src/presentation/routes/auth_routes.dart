import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

class AuthRoutes extends BeamLocation {
  @override
  List<String> get pathBlueprints => ['/login'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      LoginPage.getPage(),
    ];
  }
}
