import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_status_entity.freezed.dart';

@freezed
class AuthStatusEntity with _$AuthStatusEntity {
  const factory AuthStatusEntity.initial() = _Initial;
  const factory AuthStatusEntity.authenticated({required UserGetEntity user}) =
      _Authenticated;
  const factory AuthStatusEntity.unauthenticated() = _Unauthenticated;
}
