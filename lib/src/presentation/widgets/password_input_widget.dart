import 'package:comunikt/src/presentation/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PasswordInputWidget extends StatelessWidget {
  final TextEditingController _controller;

  PasswordInputWidget({Key? key, required String password})
      : _controller = TextEditingController(text: password),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final password = context.select((ILoginBloc bloc) => bloc.state.password);
    return TextField(
      key: const Key('loginForm_passwordInput_textField'),
      controller: _controller,
      autofillHints: const [AutofillHints.password],
      onChanged: (password) => context
          .read<ILoginBloc>()
          .add(LoginEvent.passwordChanged(password: password.trim())),
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        errorText: password.invalid ? 'Invalid password' : null,
      ),
    );
  }
}
