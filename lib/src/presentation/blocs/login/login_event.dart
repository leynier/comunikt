part of 'login_bloc.dart';

@freezed
class LoginEvent with _$LoginEvent {
  const factory LoginEvent.emailChanged({required String email}) =
      _EmailChanged;
  const factory LoginEvent.passwordChanged({required String password}) =
      _PasswordChanged;
  const factory LoginEvent.submit() = _Submit;
}
