import 'package:build_out/features/category_select/model/category_model.dart';
import 'package:build_out/utils/images.dart';
import 'package:flutter/material.dart';

class CategorySelectViewModel with ChangeNotifier {
  ItemModel _selectedCategory =
      ItemModel(id: 1, image: 'c1', title: 'Residential Building');
  ItemModel get selectedCategory => _selectedCategory;
  set selectedCategory(ItemModel value) {
    _selectedCategory = value;
    notifyListeners();
  }

  List<ItemModel> categoryList = [
    ItemModel(id: 1, image: Images.category1, title: 'Residential Building'),
    ItemModel(id: 2, image: Images.category2, title: 'Commercial Building'),
    ItemModel(id: 3, image: Images.category3, title: 'Industrial Building'),
    ItemModel(id: 4, image:Images.category4, title: ' Roads & Bridges'),
  ];
}
