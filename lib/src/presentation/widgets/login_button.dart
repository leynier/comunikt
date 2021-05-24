import 'package:comunikt/src/presentation/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final status = context.select((ILoginBloc bloc) => bloc.state.status);
    return Center(
      child: status.isSubmissionInProgress
          ? const CircularProgressIndicator()
          : ElevatedButton(
              key: const Key('loginForm_continue_raisedButton'),
              onPressed: status.isValidated
                  ? () =>
                      context.read<ILoginBloc>().add(const LoginEvent.submit())
                  : null,
              child: const Text('Login'),
            ),
    );
  }
}
