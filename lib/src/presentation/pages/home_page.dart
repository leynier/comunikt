import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('home'),
      child: HomePage(),
      type: BeamPageType.fadeTransition,
      title: getTitle('Home'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.beamToNamed('/users/4'),
        tooltip: 'Go To Users',
        child: const Icon(Icons.people),
      ),
    );
  }
}
