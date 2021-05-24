part of 'reset_password_bloc.dart';

@freezed
class ResetPasswordState with _$ResetPasswordState {
  @Assert(
    'status != FormzStatus.submissionFailure || error != null',
    'When status of submission is failure error cant be null.',
  )
  const factory ResetPasswordState({
    @Default(FormzStatus.pure) FormzStatus status,
    @Default(EmailInput.pure()) EmailInput email,
    @Default(null) ErrorEntity? error,
  }) = _ResetPasswordState;
}
