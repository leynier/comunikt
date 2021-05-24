import 'package:formz/formz.dart';

enum EmailInputError { empty }

class EmailInput extends FormzInput<String, EmailInputError> {
  const EmailInput.pure() : super.pure('');
  const EmailInput.dirty([String value = '']) : super.dirty(value);

  @override
  EmailInputError? validator(String? value) {
    return value?.isNotEmpty == true ? null : EmailInputError.empty;
  }
}
