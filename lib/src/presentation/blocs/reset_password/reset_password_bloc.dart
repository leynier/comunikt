import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/services/services.dart';
import 'package:comunikt/src/presentation/inputs/inputs.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reset_password_bloc.freezed.dart';
part 'reset_password_event.dart';
part 'reset_password_state.dart';

abstract class IResetPasswordBloc
    extends Bloc<ResetPasswordEvent, ResetPasswordState> {
  IResetPasswordBloc(ResetPasswordState initialState) : super(initialState);
}

@Injectable(as: IResetPasswordBloc)
class ResetPasswordBloc extends IResetPasswordBloc {
  final IAuthService authService;

  ResetPasswordBloc({required this.authService}) : super(ResetPasswordState());

  @override
  Stream<ResetPasswordState> mapEventToState(ResetPasswordEvent event) async* {
    yield* event.when(
      emailChanged: (email) async* {
        final emailInput = EmailInput.dirty(email);
        yield state.copyWith(
          email: emailInput,
          status: Formz.validate([emailInput]),
        );
      },
      submit: () async* {
        if (state.status.isValidated) {
          yield state.copyWith(status: FormzStatus.submissionInProgress);
          final response = await authService.resetPassword(state.email.value);
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
