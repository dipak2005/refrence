// for offline database

/*

first import the sqflite package
 1 create the dbhelper class
 2 create the static instance of class
 3 create the constructor for class
 4 create the factory constructor for class
 5 create the database the give the name but final

 */

import 'package:sqflite/sqflite.dart';

class DbHelper {
  static final DbHelper _obj = DbHelper._();

  DbHelper._();

  final dbname = "database";
  final tbName = "user";

  factory DbHelper() {
    return _obj;
  }

  static DbHelper get instance => _obj;

  Database? database;

  get number => null;

  get password => null;

  Future initDatabase() async {
    database = await openDatabase(
      dbname,
      version: 1,
      singleInstance: true,
      onCreate: (db, version) {
        db.execute('''
      CREATE TABLE "UserData" (
          "password" TEXT NOT NULL,
          "number" TEXT NOT NULL UNIQUE,
          "id" INTEGER NOT NULL, 
          PRIMARY KEY("id" AUTOINCREMENT))
''');
      },
    );
  }

  Future insertData(Usermodel usermodel) async {
    var database = await openDatabase(dbname);

    // database.insert(dbname, usermodel.toJson());
    database.close();
  }

  Future deleteData(int id) async {
    if (database == null) await initDatabase();
    database?.delete(tbName, where: "id=?", whereArgs: [id]);
    database?.close();
// database.
  }

  Future updateData(int id) async {
    if (database == null) await initDatabase();
    // database?.update(tbName, usermodel.toJson();
    database?.close();
  }

  Future<List<Map<String, Object?>>?> getData() async {
    return database?.rawQuery(
        "select * from $tbName where number=$number and password=$password");
  }
}

class Usermodel {}
