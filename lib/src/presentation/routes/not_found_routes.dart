import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

class NotFoundRoutes extends BeamLocation {
  @override
  List<String> get pathBlueprints => ['/*'];

  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      NotFoundPage.getPage(),
    ];
  }
}
