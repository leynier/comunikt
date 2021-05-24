part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.start() = _Start;
  const factory AuthEvent.statusChanged({required AuthStatusEntity status}) =
      _StatusChanged;
  const factory AuthEvent.signOut() = _SignOut;
}
