import 'package:freezed_annotation/freezed_annotation.dart';

part 'error_entity.freezed.dart';

@freezed
class ErrorEntity with _$ErrorEntity {
  const factory ErrorEntity({required int code, required String message}) =
      _ErrorEntity;
}
