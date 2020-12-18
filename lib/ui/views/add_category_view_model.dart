import 'package:Todo/core/models/categories_model.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AddCategoryViewModel extends ChangeNotifier {
  String _chosenCategoryName;
  String _firstselectedColor;
  String _secondselectedColor;
  int color1;
  int color2;
  int idIncrement;

  AddCategoryViewModel() {
    this._chosenCategoryName = '';
    this.idIncrement = 0;
  }
  int increment() {
    return idIncrement++;
  }

  String get selectedCategoryName => _chosenCategoryName;
  String get selectedFirstColor => _firstselectedColor;
  String get selectedSecondColor => _secondselectedColor;

  setChosenCategoryName(String chosenCategory) =>
      _chosenCategoryName = chosenCategory;

  setSelectedColor1(String selectedColor) =>
      _firstselectedColor = selectedColor;
  setSelectedColor2(String selectedColor) =>
      _secondselectedColor = selectedColor;

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
    Categories newCategories = Categories(
      increment(),
      _chosenCategoryName,
      _firstselectedColor,
      _secondselectedColor,
    );
    return newCategories;
  }
}
