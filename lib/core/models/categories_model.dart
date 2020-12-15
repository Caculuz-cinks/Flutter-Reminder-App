import 'package:flutter/material.dart';

class Categories {
  final int id;
  final String categoryName;
  final Color cardColor;
  static final columns = ["id", "categoryName", "cardColor"];
  Categories(this.cardColor, this.categoryName, this.id);
  factory Categories.fromMap(Map<String, dynamic> data) {
    return Categories(data['id'], data['categoryName'], data['cardColor']);
  }
  Map<String, dynamic> toMap() =>
      {"id": id, "categoryName": categoryName, "cardColor": cardColor};
}
