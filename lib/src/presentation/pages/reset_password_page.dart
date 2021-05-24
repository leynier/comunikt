import 'package:beamer/beamer.dart';
import 'package:comunikt/src/presentation/blocs/blocs.dart';
import 'package:comunikt/src/presentation/utils/utils.dart';
import 'package:comunikt/src/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';

class ResetPasswordPage extends StatelessWidget {
  static BeamPage getPage() {
    return BeamPage(
      key: const ValueKey('resetpassword'),
      title: getTitle('Reset Password'),
      type: BeamPageType.fadeTransition,
      child: ResetPasswordPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IResetPasswordBloc>(
      create: (context) => GetIt.I(),
      child: Scaffold(
        body: SafeArea(
          child: BlocListener<IResetPasswordBloc, ResetPasswordState>(
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
                        email: context
                            .read<IResetPasswordBloc>()
                            .state
                            .email
                            .value,
                      ),
                      _ResetPasswordButton(),
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
    final email = context.select((IResetPasswordBloc bloc) => bloc.state.email);
    return EmailInputWidget(
      controller: _controller,
      email: email,
      keyText: 'resetpasswordForm_emailInput_textField',
      onChanged: (email) {
        context
            .read<IResetPasswordBloc>()
            .add(ResetPasswordEvent.emailChanged(email: email.trim()));
      },
    );
  }
}

class _ResetPasswordButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final status =
        context.select((IResetPasswordBloc bloc) => bloc.state.status);
    return Center(
      child: status.isSubmissionInProgress
          ? const CircularProgressIndicator()
          : ElevatedButton(
              key: const Key('resetpasswordForm_continue_raisedButton'),
              onPressed: status.isValidated
                  ? () => context
                      .read<IResetPasswordBloc>()
                      .add(const ResetPasswordEvent.submit())
                  : null,
              child: const Text('Reset Password'),
            ),
    );
  }
}
