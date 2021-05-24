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
  }) : super(const AuthState.initial()) {
    _controller = authService.status.listen(
      (status) {
        status.when(
          initial: () {},
          authenticated: (user) {
            localService.setUser(user);
          },
          unauthenticated: () {
            localService.delUser();
          },
        );
        add(AuthEvent.statusChanged(status: status));
      },
    );
  }

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    yield* event.when(
      start: () async* {
        await localService.recoverSession();
      },
      statusChanged: (status) async* {
        yield* status.when(
          initial: () async* {
            yield const AuthState.initial();
          },
          authenticated: (user) async* {
            yield AuthState.authenticated(user: user);
          },
          unauthenticated: () async* {
            yield const AuthState.unauthenticated();
          },
        );
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
