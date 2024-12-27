import 'package:build_out/features/category_select/model/category_model.dart';
import 'package:build_out/utils/images.dart';
import 'package:flutter/material.dart';

class CategorySelectViewModel with ChangeNotifier {
  CategoryModel _selectedCategory =
      CategoryModel(id: 1, image: 'c1', title: 'Residential Building');
  CategoryModel get selectedCategory => _selectedCategory;
  set selectedCategory(CategoryModel value) {
    _selectedCategory = value;
    notifyListeners();
  }

  List<CategoryModel> categoryList = [
    CategoryModel(id: 1, image: Images.category1, title: 'Residential Building'),
    CategoryModel(id: 2, image: Images.category2, title: 'Commercial Building'),
    CategoryModel(id: 3, image: Images.category3, title: 'Industrial Building'),
    CategoryModel(id: 4, image:Images.category4, title: ' Roads & Bridges'),
  ];
}
