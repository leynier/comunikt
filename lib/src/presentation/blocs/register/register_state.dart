part of 'register_bloc.dart';

@freezed
class RegisterState with _$RegisterState {
  @Assert(
    'status != FormzStatus.submissionFailure || error != null',
    'When status of submission is failure error cant be null.',
  )
  const factory RegisterState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(EmailInput.pure()) EmailInput email,
    @Default(PasswordInput.pure()) PasswordInput password,
    @Default(ConfirmPasswordInput.pure(''))
        ConfirmPasswordInput confirmPassword,
    @Default(null) ErrorEntity? error,
  }) = _RegisterState;
}
