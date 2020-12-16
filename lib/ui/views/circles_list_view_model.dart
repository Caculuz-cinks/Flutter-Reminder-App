import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CirclesListViewModel extends ChangeNotifier {
  int _selectedColor1;
  int _selectedColor2;
  int color1;
  int color2;

  int get selectedColor1 => _selectedColor1;
  int get selectedColor2 => _selectedColor2;

  Future<void> saveColor() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt("color1", _selectedColor1);
    prefs.setInt("color2", _selectedColor2);
    notifyListeners();
  }

  Future<void> getColors() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    color1 = prefs.getInt("color1");
    color2 = prefs.getInt("color2");
    notifyListeners();
  }
}
