import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

class CheckingRoutes extends BeamLocation {
  @override
  List<String> get pathBlueprints => ['/checking'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      CheckingPage.getPage(),
    ];
  }
}
