import 'package:Todo/core/models/categories_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddCategoryViewModel extends ChangeNotifier {
  String _chosenCategoryName;
  int _firstselectedColor;
  int _secondselectedColor;
  int color1;
  int color2;

  AddCategoryViewModel() {
    this._chosenCategoryName = '';
  }

  String get chosenCategoryName => _chosenCategoryName;
  int get selectedColor1 => _firstselectedColor;
  int get selectedColor2 => _secondselectedColor;

  // Future<void> saveColor() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setInt("color1", _firstselectedColor);
  //   prefs.setInt("color2", _secondselectedColor);
  // }

  // Future<void> getColors() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   color1 = prefs.getInt("color1");
  //   color2 = prefs.getInt("color2");
  // }

  Categories createCategories() {
    return Categories(
      _chosenCategoryName,
      1,
      _firstselectedColor,
      _secondselectedColor,
    );
  }
}
