import 'dart:io';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class CategoriesData extends ChangeNotifier {
  static final CategoriesData db = CategoriesData();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
  }

  initDB() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, "CategoriesDB.db");
    return openDatabase(path, version: 1, onOpen: (db) {},
        onCreate: (Database db, int version) async {
      await db.execute("CREATE TABLE PRODUCT("
          "id INTEGER PRIMARY KEY,"
          "categoryName TEXT,"
          "cardColor VARCHAR"
          ")");
    });
  }
}
