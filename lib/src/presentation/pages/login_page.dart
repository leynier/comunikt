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
                      _EmailInputWidget(
                        email: context.read<ILoginBloc>().state.email.value,
                      ),
                      _PasswordInputWidget(
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

class _EmailInputWidget extends StatelessWidget {
  final TextEditingController _controller;

  _EmailInputWidget({Key? key, required String email})
      : _controller = TextEditingController(text: email),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = context.select((ILoginBloc bloc) => bloc.state.email);
    return EmailInputWidget(
      controller: _controller,
      email: email,
      keyText: 'loginForm_emailInput_textField',
      onChanged: (email) {
        context
            .read<ILoginBloc>()
            .add(LoginEvent.emailChanged(email: email.trim()));
      },
    );
  }
}

class _PasswordInputWidget extends StatelessWidget {
  final TextEditingController _controller;

  _PasswordInputWidget({Key? key, required String password})
      : _controller = TextEditingController(text: password),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final password = context.select((ILoginBloc bloc) => bloc.state.password);
    return PasswordInputWidget(
      controller: _controller,
      password: password,
      keyText: 'loginForm_passwordInput_textField',
      onChanged: (password) {
        context
            .read<ILoginBloc>()
            .add(LoginEvent.passwordChanged(password: password.trim()));
      },
    );
  }
}
