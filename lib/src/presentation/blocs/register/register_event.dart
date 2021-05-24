part of 'register_bloc.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.emailChanged({required String email}) =
      _EmailChanged;
  const factory RegisterEvent.passwordChanged({required String password}) =
      _PasswordChanged;
  const factory RegisterEvent.confirmPasswordChanged({
    required String confirmPassword,
  }) = _ConfirmPasswordChanged;
  const factory RegisterEvent.submit() = _Submit;
}
