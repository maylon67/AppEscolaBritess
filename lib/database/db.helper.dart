import 'package:sqflite/sqflite.dart';
import 'crud/crud_users.dart';
import 'dart:io' show Platform;

class DatabaseHelper
    with
        CrudUsers{

  DatabaseHelper.internal();

  static final DatabaseHelper _instance = DatabaseHelper.internal();
  factory DatabaseHelper() => _instance;

  final String dbName = 'avanti_agro_gerencial.db';
  final int dbVersion = 1;

  static Database? _db;

  Future<Database> _initDatabase() async {
    final databasePath = await getDatabasesPath();
    String path = '';
    if(Platform.isIOS){
      path = databasePath + '/' + dbName;
    } else {
      path = databasePath + dbName;
    }
    print(path);
    print('\n=== BANCO AINDA NAO INICIALIDADO, INICIANDO... ===\n');

    return await openDatabase(path, version: dbVersion, onCreate: (Database db, int newerVersion) async {
      await createCompleteDB(db);
    });
  }

  Future<Database> get database async {
    if (_db != null) return _db!;
    _db = await _initDatabase();
    return _db!;
  }

  Future<void> createCompleteDB(Database db) async {
    await createTableUsers(db);
    print('\n=== CREATE COMPLETE DB ===\n');
  }

}

