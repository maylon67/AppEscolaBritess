import 'package:app_escola_bites/app_config.dart';
import 'package:app_escola_bites/database/tables/table_users.dart';
import 'package:app_escola_bites/models/users_models.dart';
import 'package:sqflite/sqflite.dart';

import 'package:app_escola_bites/database/db.helper.dart';

class CrudUsers {
  Future<void> createTableUsers(Database db) async {
    // await db.execute('DROP TABLE IF EXISTS $tableUsers');
    await db.execute(
        'CREATE TABLE IF NOT EXISTS $tableUsers ('
            '$fieldUsersEmail TEXT PRIMARY KEY, '
            '$fieldUsersPassword TEXT, '
            '$fieldUsersUser TEXT, '
            '$fieldUsersUserid INTEGER, '
            '$fieldUsersLogged INTEGER, '
            '$fieldUsersPermissions TEXT, '
            '$fieldUsersLastLogin TEXT'
            ')'
    );
  }

  Future<bool> insertUserInDB(UserModel user) async {
    final _db = await DatabaseHelper().database;
    final Batch batch = _db.batch();
    try {
      batch.insert(tableUsers, user.toDB());
      await batch.commit(continueOnError: true);
      return true;
    } catch (e) {
      print('\n === ERROR INSERT_USER: ${e.toString()} === \n');
      return false;
    }
  }

  Future<List<UserModel>> selectAllUsers() async {
    List<MapSD> data = await _selectAllUsers();
    List<UserModel> users = [];
    data.forEach((element) => users.add(UserModel.fromDatabase(element)));
    return users;
  }

  Future<List<MapSD>> _selectAllUsers() async {
    final db = await DatabaseHelper().database;
    List<MapSD> response = [];
    try {
      await db.transaction((txn) async =>
          response = await txn.rawQuery("SELECT * FROM $tableUsers"));
    } catch (e) {
      return [];
    }
    return response;
  }

  Future<List<UserModel>> selectUserEmailId(String email, String senha) async {
    List<MapSD> data = await _selectUserEmailId(email, senha);
    List<UserModel> users = [];
    data.forEach((element) => users.add(UserModel.fromDatabase(element)));
    return users;
  }

  Future<List<MapSD>> _selectUserEmailId(String email, String senha) async {
    final db = await DatabaseHelper().database;
    List<MapSD> response = [];
    try {
      await db.transaction((txn) async => response = await txn.rawQuery(
          "SELECT * FROM $tableUsers WHERE $fieldUsersPassword LIKE \'$senha\' AND $fieldUsersEmail LIKE \'$email\'"));
    } catch (e) {
      return [];
    }
    return response;
  }

  Future<void> deleteUser(String email) async {
    final db = await DatabaseHelper().database;
    try {
      await db.transaction((txn) async => await txn.rawQuery(
          "DELETE FROM $tableUsers WHERE $fieldUsersEmail = \'$email\'"));
    } catch (e) {
      print('\n === ERRO DELETE USER === \n');
    }
  }
}