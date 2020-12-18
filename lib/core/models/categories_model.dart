import 'package:flutter/material.dart';

class Categories {
  final int id;
  final String categoryName;
  final String firstSelectedColor;
  final String secondSelectedColor;

  static final columns = [
    "id",
    "categoryName",
    "firstSelectedColor",
    "secondSelectedColor"
  ];
  Categories(this.id, this.categoryName, this.firstSelectedColor,
      this.secondSelectedColor);
  factory Categories.fromMap(Map<String, dynamic> data) {
    return Categories(
      data['id'],
      data['categoryName'],
      data['firstSelectedColor'],
      data['secondSelectedColor'],
    );
  }
  Map<String, dynamic> toMap() => {
        "id": id,
        "categoryName": categoryName,
        "firstSelectedColor": firstSelectedColor,
        "secondSelectedColor": secondSelectedColor,
      };
}
