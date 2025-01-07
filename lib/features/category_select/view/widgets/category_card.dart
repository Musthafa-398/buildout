
import 'package:build_out/constants/colors.dart';
import 'package:build_out/features/category_select/view_model/category_select_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../../constants/text_styles.dart';
import '../../../../widgets/gap.dart';
import '../../model/category_model.dart';

class CategoryCard extends StatelessWidget {
 final ItemModel categoryModel;
  const CategoryCard({
    super.key, required this.categoryModel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 15.h),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color(0xffAFAFB6), width: 1.5),
          
         ),
      child: Row(
        children: [
          Container(
            width: 86,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6), color: Colors.grey, image: DecorationImage(image:AssetImage(categoryModel.image??''),fit: BoxFit.cover)),
          ),
          W(16),
          Expanded(
            child: Text(
             categoryModel.title,
              style: getTextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff00040D)),
            ),
          ),
          W(5),
         Consumer<CategorySelectViewModel>(builder: (context, provider, child) {
          bool isSelected = provider.selectedCategory.id==categoryModel.id;
           return  Container(
            height: 33.h,
            width: 33.w,
            decoration: BoxDecoration(
              color: isSelected?primaryColor:Colors.white,
                shape: BoxShape.circle,
                border: Border.all(color: const Color(0xffAFAFB6), width: 2.8)),
          );
         },)
        ],
      ),
    );
  }
}
