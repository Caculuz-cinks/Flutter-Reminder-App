import 'package:flutter/material.dart';

class Categories {
  final String categoryName;
  final Color cardColor;
  static final columns = ["categoryName", "cardColor"];
  Categories(this.cardColor, this.categoryName);
  factory Categories.fromMap(Map<String, dynamic> data) {
    return Categories(data['categoryName'], data['cardColor']);
  }
  Map<String, dynamic> toMap() =>
      {"categoryName": categoryName, "cardColor": cardColor};
}
