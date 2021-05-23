import 'dart:convert';

import 'package:comunikt/src/data/models/user_get_model.dart';
import 'package:comunikt/src/domain/entities/user_entity.dart';
import 'package:comunikt/src/domain/repositories/repositories.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@LazySingleton(as: ILocalRepository)
class LocalRepository implements ILocalRepository {
  static const boxName = 'local';
  final Box<String> box;
  final Logger logger;

  LocalRepository({@Named(boxName) required this.box, required this.logger});

  @override
  Future<bool> delUser() async {
    try {
      await box.delete('user');
      return true;
    } catch (e) {
      logger.e(e.toString());
      return false;
    }
  }

  @override
  UserGetEntity? getUser() {
    final data = box.get('user');
    if (data == null) {
      return null;
    }
    try {
      final model = UserGetModel.fromJson(
        jsonDecode(data) as Map<String, dynamic>,
      );
      return UserGetEntity(id: model.id, email: model.email);
    } catch (e) {
      logger.e(e.toString());
      return null;
    }
  }

  @override
  bool isAuthenticated() {
    return getUser() != null;
  }

  @override
  Future<bool> setUser(UserGetEntity entity) async {
    try {
      final model = UserGetModel(id: entity.id, email: entity.email);
      final data = jsonEncode(model.toJson());
      await box.put('user', data);
      return true;
    } catch (e) {
      logger.e(e.toString());
      return false;
    }
  }
}
