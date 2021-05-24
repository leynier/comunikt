part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  @Assert(
    'status != FormzStatus.submissionSuccess || user != null',
    'When status of submission is success user cant be null.',
  )
  @Assert(
    'status != FormzStatus.submissionFailure || error != null',
    'When status of submission is failure error cant be null.',
  )
  const factory LoginState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(EmailInput.pure()) EmailInput email,
    @Default(PasswordInput.pure()) PasswordInput password,
    UserGetEntity? user,
    ErrorEntity? error,
  }) = _LoginState;
}
