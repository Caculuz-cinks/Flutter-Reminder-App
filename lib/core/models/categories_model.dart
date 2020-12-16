import 'package:flutter/material.dart';

class Categories {
  final int id;
  final String categoryName;

  static final columns = ["id", "categoryName", "cardColor"];
  Categories(this.categoryName, this.id);
  factory Categories.fromMap(Map<String, dynamic> data) {
    return Categories(
      data['id'],
      data['categoryName'],
    );
  }
  Map<String, dynamic> toMap() => {
        "id": id,
        "categoryName": categoryName,
      };
}
