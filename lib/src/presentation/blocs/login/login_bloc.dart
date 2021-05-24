import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/services/services.dart';
import 'package:comunikt/src/presentation/inputs/inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

abstract class ILoginBloc extends Bloc<LoginEvent, LoginState> {
  ILoginBloc(LoginState initialState) : super(initialState);
}

@Injectable(as: ILoginBloc)
class LoginBloc extends ILoginBloc {
  final IAuthService authService;

  LoginBloc({required this.authService}) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    yield* event.when(
      emailChanged: (email) async* {
        final emailInput = EmailInput.dirty(email);
        yield state.copyWith(
          email: emailInput,
          status: Formz.validate([emailInput, state.password]),
        );
      },
      passwordChanged: (password) async* {
        final passwordInput = PasswordInput.dirty(password);
        yield state.copyWith(
          password: passwordInput,
          status: Formz.validate([state.email, passwordInput]),
        );
      },
      submit: () async* {
        if (state.status.isValidated) {
          yield state.copyWith(status: FormzStatus.submissionInProgress);
          final response = await authService.signIn(
            UserPostEntity(
              email: state.email.value,
              password: state.password.value,
            ),
          );
          yield* response.fold(
            (user) async* {
              yield state.copyWith(
                status: FormzStatus.submissionSuccess,
                user: user,
              );
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
