import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/services/services.dart';
import 'package:comunikt/src/presentation/inputs/email_input.dart';
import 'package:comunikt/src/presentation/inputs/inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'register_bloc.freezed.dart';
part 'register_event.dart';
part 'register_state.dart';

abstract class IRegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  IRegisterBloc(RegisterState initialState) : super(initialState);
}

@Injectable(as: IRegisterBloc)
class RegisterBloc extends IRegisterBloc {
  final IAuthService authService;

  RegisterBloc({required this.authService}) : super(RegisterState());

  @override
  Stream<RegisterState> mapEventToState(RegisterEvent event) async* {
    yield* event.when(
      emailChanged: (email) async* {
        final emailInput = EmailInput.dirty(email);
        yield state.copyWith(
          email: emailInput,
          status: Formz.validate([
            emailInput,
            state.password,
            state.confirmPassword,
          ]),
        );
      },
      passwordChanged: (password) async* {
        final passwordInput = PasswordInput.dirty(password);
        final confirmPasswordInput = ConfirmPasswordInput.dirty(
          passwordInput.value,
          state.confirmPassword.value,
        );
        yield state.copyWith(
          password: passwordInput,
          confirmPassword: confirmPasswordInput,
          status: Formz.validate([
            state.email,
            passwordInput,
            state.confirmPassword,
          ]),
        );
      },
      confirmPasswordChanged: (password) async* {
        final confirmPasswordInput = ConfirmPasswordInput.dirty(
          state.password.value,
          password,
        );
        yield state.copyWith(
          confirmPassword: confirmPasswordInput,
          status: Formz.validate([
            state.email,
            state.password,
            confirmPasswordInput,
          ]),
        );
      },
      submit: () async* {
        if (state.status.isValidated) {
          yield state.copyWith(status: FormzStatus.submissionInProgress);
          final response = await authService.signUp(
            UserPostEntity(
              email: state.email.value,
              password: state.password.value,
            ),
          );
          yield* response.fold(
            (user) async* {
              yield state.copyWith(status: FormzStatus.submissionSuccess);
            },
            (error) async* {
              yield state.copyWith(
                status: FormzStatus.submissionFailure,
                error: error,
              );
            },
          );
        }
      },
    );
  }
}
