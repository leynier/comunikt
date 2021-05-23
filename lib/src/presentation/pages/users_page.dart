import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UsersPage extends StatelessWidget {
  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('users'),
      child: UsersPage(),
      type: BeamPageType.fadeTransition,
      title: getTitle('Users'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Users'),
        ),
        body: ListView(
          children: [
            for (var i = 0; i < 50; ++i)
              ListTile(
                title: Text('User $i'),
                onTap: () => context.beamToNamed('/users/$i'),
              ),
          ],
        ),
      ),
    );
  }
}
