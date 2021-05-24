import 'package:comunikt/src/presentation/inputs/inputs.dart';
import 'package:flutter/material.dart';

class ConfirmPasswordInputWidget extends StatelessWidget {
  final String keyText;
  final TextEditingController controller;
  final ConfirmPasswordInput confirmPassword;
  final ValueChanged<String> onChanged;

  const ConfirmPasswordInputWidget({
    Key? key,
    required this.keyText,
    required this.controller,
    required this.confirmPassword,
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
        hintText: 'Confirm Password',
        errorText: confirmPassword.invalid ? 'Password not match' : null,
      ),
    );
  }
}
