import 'package:flutter/material.dart';

class MasterViewModel with ChangeNotifier {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  set selectedIndex(index) {
    _selectedIndex = index;
    notifyListeners();
  }
}
