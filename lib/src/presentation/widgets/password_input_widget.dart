import 'package:comunikt/src/presentation/inputs/inputs.dart';
import 'package:flutter/material.dart';

class PasswordInputWidget extends StatelessWidget {
  final String keyText;
  final TextEditingController controller;
  final PasswordInput password;
  final ValueChanged<String> onChanged;

  const PasswordInputWidget({
    Key? key,
    required this.keyText,
    required this.controller,
    required this.password,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: Key(keyText),
      controller: controller,
      autofillHints: const [AutofillHints.password],
      onChanged: onChanged,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        errorText: password.invalid ? 'Invalid password' : null,
      ),
    );
  }
}
