import 'dart:io';
import 'package:Todo/core/models/categories_model.dart';
import 'package:path/path.dart';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class CategoriesData extends ChangeNotifier {
  static final CategoriesData db = CategoriesData();
  static Database _database;

  List<Categories> _categories = [];

  List<Categories> get categories => _categories;

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
          "firstSelectedColor INTEGER,"
          "secondSelectedColor INTEGER,"
          ")");
    });
  }

  Future<void> insert(Categories categories) async {
    final db = await database;
    var maxIdResult = await db
        .rawQuery("SELECT MAX(id)+1 as last_inserted_id FROM Categories");
    var id = maxIdResult.first["last_inserted_id"];
    var result = await db.rawInsert(
        "INSERT Into Categories(id, categoryName, firstSelectedColor, secondSelectedColor  )"
        "VALUES(?,?,?,?)",
        [
          id,
          categories.categoryName,
          categories.firstSelectedColor,
          categories.secondSelectedColor,
        ]);
    notifyListeners();
    return result;
  }

  Future<List<Categories>> getAllCategories() async {
    final db = await database;
    List<Map> results = await db.query("Categories",
        columns: Categories.columns, orderBy: "id ASC");
    _categories = new List();
    results.forEach((result) {
      Categories category = Categories.fromMap(result);
      _categories.add(category);
    });
    notifyListeners();
    return _categories;
  }
}
