import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/blocs/blocs.dart';
import 'package:comunikt/src/presentation/utils/utils.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('home'),
      title: getTitle('Home'),
      type: BeamPageType.fadeTransition,
      child: HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    ListView(),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        child: IconButton(
                          onPressed: () {
                            context
                                .read<IThemingBloc>()
                                .add(const ThemingEvent.change());
                          },
                          icon: BlocBuilder<IThemingBloc, ThemingState>(
                            builder: (context, state) {
                              switch (state.mode) {
                                case ThemeMode.system:
                                  return Icon(
                                    Icons.brightness_auto,
                                    color: Theme.of(context).hintColor,
                                  );
                                case ThemeMode.light:
                                  return Icon(
                                    Icons.brightness_high,
                                    color: Theme.of(context).hintColor,
                                  );
                                case ThemeMode.dark:
                                  return Icon(
                                    Icons.brightness_low,
                                    color: Theme.of(context).hintColor,
                                  );
                              }
                            },
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () => context.beamToNamed('/users/4'),
        onPressed: () =>
            context.read<IAuthBloc>().add(const AuthEvent.signOut()),
        tooltip: 'Go To Users',
        child: const Icon(Icons.people),
      ),
    );
  }
}
