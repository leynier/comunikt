import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_get_model.freezed.dart';
part 'user_get_model.g.dart';

@freezed
class UserGetModel with _$UserGetModel {
  const factory UserGetModel({required String id, required String email}) =
      _UserGetModel;
  factory UserGetModel.fromJson(Map<String, dynamic> json) =>
      _$UserGetModelFromJson(json);
}
