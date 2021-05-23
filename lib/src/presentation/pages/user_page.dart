import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
  static BeamPage getPage({required String userId}) {
    return BeamPage(
      key: ValueKey('users-$userId'),
      child: UserPage(userId: userId),
      type: BeamPageType.fadeTransition,
      title: getTitle('User $userId'),
    );
  }

  final String userId;

  const UserPage({Key? key, required this.userId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User $userId'),
      ),
      body: Center(
        child: Text('User $userId'),
      ),
    );
  }
}
