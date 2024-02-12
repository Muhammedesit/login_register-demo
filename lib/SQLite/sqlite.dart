import 'package:mobx/mobx.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqlite_flutter_crud/JsonModels/users.dart';

part "sqlite.g.dart";

class DatabaseHelper = _DatabaseHelper with _$DatabaseHelper;

abstract class _DatabaseHelper with Store {
  final databaseName = "notes.db";

  String users =
      "create table users (usrId INTEGER PRIMARY KEY AUTOINCREMENT, usrName TEXT UNIQUE, usrPassword TEXT)";

  @observable
  Database? database;

  @action
  Future<void> initDB() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, databaseName);

    database = await openDatabase(path, version: 1, onCreate: (db, version) async {
      await db.execute(users);

    });
  }

  @action
  Future<bool> login(Users user) async {
    if (database == null) await initDB();

    var result = await database!.rawQuery(
        "select * from users where usrName = '${user
            .usrName}' AND usrPassword = '${user.usrPassword}'");
    return result.isNotEmpty;
  }

  @action
  Future<int> signup(Users user) async {
    if (database == null) await initDB();

    return database!.insert('users', user.toMap());
  }
}
