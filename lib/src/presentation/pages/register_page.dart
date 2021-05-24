import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/blocs/blocs.dart';
import 'package:comunikt/src/presentation/utils/utils.dart';
import 'package:comunikt/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';

class RegisterPage extends StatelessWidget {
  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('register'),
      title: getTitle('Register'),
      type: BeamPageType.fadeTransition,
      child: RegisterPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IRegisterBloc>(
      create: (context) => GetIt.I(),
      child: Scaffold(
        body: SafeArea(
          child: BlocListener<IRegisterBloc, RegisterState>(
            listener: (context, state) {
              if (state.status == FormzStatus.submissionSuccess) {
                context.beamToNamed('/login');
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
                        email: context.read<IRegisterBloc>().state.email.value,
                      ),
                      _PasswordInputWidget(
                        password:
                            context.read<IRegisterBloc>().state.password.value,
                      ),
                      _ConfirmPasswordInputWidget(
                        confirmPassword: context
                            .read<IRegisterBloc>()
                            .state
                            .confirmPassword
                            .value,
                      ),
                      _RegisterButton(),
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
    final email = context.select((IRegisterBloc bloc) => bloc.state.email);
    return EmailInputWidget(
      controller: _controller,
      email: email,
      keyText: 'registerForm_emailInput_textField',
      onChanged: (email) {
        context
            .read<IRegisterBloc>()
            .add(RegisterEvent.emailChanged(email: email.trim()));
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
    final password =
        context.select((IRegisterBloc bloc) => bloc.state.password);
    return PasswordInputWidget(
      controller: _controller,
      password: password,
      keyText: 'registerForm_passwordInput_textField',
      onChanged: (password) {
        context
            .read<IRegisterBloc>()
            .add(RegisterEvent.passwordChanged(password: password.trim()));
      },
    );
  }
}

class _ConfirmPasswordInputWidget extends StatelessWidget {
  final TextEditingController _controller;

  _ConfirmPasswordInputWidget({Key? key, required String confirmPassword})
      : _controller = TextEditingController(text: confirmPassword),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final confirmPassword =
        context.select((IRegisterBloc bloc) => bloc.state.confirmPassword);
    return ConfirmPasswordInputWidget(
      controller: _controller,
      confirmPassword: confirmPassword,
      keyText: 'registerForm_confirmPasswordInput_textField',
      onChanged: (confirmPassword) {
        context.read<IRegisterBloc>().add(RegisterEvent.confirmPasswordChanged(
            confirmPassword: confirmPassword.trim()));
      },
    );
  }
}

class _RegisterButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final status = context.select((IRegisterBloc bloc) => bloc.state.status);
    return Center(
      child: status.isSubmissionInProgress
          ? const CircularProgressIndicator()
          : ElevatedButton(
              key: const Key('registerForm_continue_raisedButton'),
              onPressed: status.isValidated
                  ? () => context
                      .read<IRegisterBloc>()
                      .add(const RegisterEvent.submit())
                  : null,
              child: const Text('Register'),
            ),
    );
  }
}
