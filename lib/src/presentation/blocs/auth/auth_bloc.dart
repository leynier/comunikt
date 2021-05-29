import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:comunikt/src/domain/services/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

abstract class IAuthBloc extends Bloc<AuthEvent, AuthState> {
  IAuthBloc(AuthState initialState) : super(initialState);
}

@Singleton(as: IAuthBloc)
class AuthBloc extends IAuthBloc {
  final IAuthService authService;
  final ILocalService localService;
  late StreamSubscription<AuthStatusEntity> _controller;

  AuthBloc({
    required this.authService,
    required this.localService,
  }) : super(const AuthState.checking()) {
    _controller = authService.status.listen(
      (status) {
        if (status is AuthenticatedAuthStatusEntity) {
          localService.setUser(status.user);
        } else if (status is UnauthenticatedAuthStatusEntity) {
          localService.delUser();
        }
        add(AuthEvent.statusChanged(status: status));
      },
    );
  }

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(
      start: () async* {
        final response = await localService.recoverSession();
        final user = localService.getUser();
        if (response && user != null) {
          yield AuthState.authenticated(user: user);
        } else {
          yield const AuthState.unauthenticated();
        }
      },
      statusChanged: (status) async* {
        if (status is CheckingAuthStatusEntity) {
          yield const AuthState.checking();
        } else if (status is AuthenticatedAuthStatusEntity) {
          yield AuthState.authenticated(user: status.user);
        } else if (status is UnauthenticatedAuthStatusEntity) {
          yield const AuthState.unauthenticated();
        }
      },
      signOut: () async* {
        authService.signOut();
      },
    );
  }

  @override
  Future<void> close() {
    _controller.cancel();
    authService.dispose();
    return super.close();
  }
}
