import 'package:comunikt/src/presentation/inputs/inputs.dart';
import 'package:flutter/material.dart';

class EmailInputWidget extends StatelessWidget {
  final String keyText;
  final TextEditingController controller;
  final EmailInput email;
  final ValueChanged<String> onChanged;

  const EmailInputWidget({
    Key? key,
    required this.keyText,
    required this.controller,
    required this.email,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: Key(keyText),
      controller: controller,
      autofillHints: const [AutofillHints.email, AutofillHints.username],
      autocorrect: false,
      keyboardType: TextInputType.emailAddress,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: 'Email',
        errorText: email.invalid ? 'Invalid email' : null,
      ),
    );
  }
}
