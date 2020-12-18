import 'package:Todo/core/models/categories_model.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {
  List<Categories> _allCategories = [];

  void updateCategories(List<Categories> categories) {
    _allCategories = categories;
    print('I also got here');
    notifyListeners();
  }

  List<Categories> get categories {
    return _allCategories;
  }
}
