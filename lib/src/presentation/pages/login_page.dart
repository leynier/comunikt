import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/blocs/blocs.dart';
import 'package:comunikt/src/presentation/utils/utils.dart';
import 'package:comunikt/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatelessWidget {
  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('login'),
      title: getTitle('Login'),
      type: BeamPageType.fadeTransition,
      child: LoginPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ILoginBloc>(
      create: (context) => GetIt.I(),
      child: Scaffold(
        body: SafeArea(
          child: BlocListener<ILoginBloc, LoginState>(
            listener: (context, state) {
              if (state.status == FormzStatus.submissionSuccess) {
                context.beamToNamed('/');
              }
              if (state.status == FormzStatus.submissionFailure) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(SnackBar(content: Text(state.error!.message)));
              }
            },
            child: AutofillGroup(
              child: Builder(
                builder: (context) {
                  return Column(
                    children: [
                      EmailInputWidget(
                        email: context.read<ILoginBloc>().state.email.value,
                      ),
                      PasswordInputWidget(
                        password:
                            context.read<ILoginBloc>().state.password.value,
                      ),
                      LoginButton(),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
