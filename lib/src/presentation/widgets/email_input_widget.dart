import 'package:comunikt/src/presentation/blocs/blocs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailInputWidget extends StatelessWidget {
  final TextEditingController _controller;

  EmailInputWidget({Key? key, required String email})
      : _controller = TextEditingController(text: email),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    final email = context.select((ILoginBloc bloc) => bloc.state.email);
    return TextField(
      key: const Key('loginForm_emailInput_textField'),
      controller: _controller,
      autofillHints: const [AutofillHints.email, AutofillHints.username],
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      onChanged: (email) => context
          .read<ILoginBloc>()
          .add(LoginEvent.emailChanged(email: email.trim())),
      decoration: InputDecoration(
        hintText: 'Email',
        errorText: email.invalid ? 'Invalid email' : null,
      ),
    );
  }
}
