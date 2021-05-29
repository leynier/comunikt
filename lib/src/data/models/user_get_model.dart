import 'package:comunikt/src/domain/entities/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_get_model.g.dart';

@JsonSerializable()
class UserGetModel implements UserGetEntity {
  @override
  final String id;
  @override
  final String email;

  const UserGetModel({required this.id, required this.email});

  static UserGetModel fromJson(Map<String, dynamic> json) =>
      _$UserGetModelFromJson(json);
  Map<String, dynamic> toJson() => _$UserGetModelToJson(this);
}
