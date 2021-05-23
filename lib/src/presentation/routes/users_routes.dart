import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/pages/pages.dart';
import 'package:flutter/material.dart';

class UsersLocation extends BeamLocation {
  @override
  List<String> get pathBlueprints => ['/users/:userId'];
  @override
  List<BeamPage> buildPages(BuildContext context, BeamState state) {
    return [
      HomePage.getPage(),
      if (state.uri.pathSegments.contains('users')) UsersPage.getPage(),
      if (state.pathParameters.containsKey('userId'))
        UserPage.getPage(userId: state.pathParameters['userId']!),
    ];
  }
}
