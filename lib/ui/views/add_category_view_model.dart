import 'package:Todo/core/models/categories_model.dart';
import 'package:flutter/material.dart';

class AddCategoryViewModel extends ChangeNotifier {
  String _chosenCategoryName;
  Color _selectedCardColor;

  List<Categories> _availableCategories = [];

  AddCategoryViewModel() {
    this._chosenCategoryName = '';
    this._selectedCardColor = null;
  }

  String get chosenCategoryName => _chosenCategoryName;
  Color get slectedCardColor => _selectedCardColor;

  Categories createCategories() {
    return Categories(_chosenCategoryName, 1);
  }
}
