import 'package:formz/formz.dart';

enum ConfirmPasswordInputError { invalid }

class ConfirmPasswordInput
    extends FormzInput<String, ConfirmPasswordInputError> {
  const ConfirmPasswordInput.pure(this.password) : super.pure('');
  const ConfirmPasswordInput.dirty(this.password, [String value = ''])
      : super.dirty(value);

  final String password;

  @override
  ConfirmPasswordInputError? validator(String? value) {
    return value == password ? null : ConfirmPasswordInputError.invalid;
  }
}
