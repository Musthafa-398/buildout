import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/category_select/view_model/category_select_view_model.dart';
import 'package:build_out/features/location_permission/location_permission_screen.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../utils/images.dart';
import '../model/category_model.dart';
import 'widgets/category_card.dart';

class CategorySelectScreen extends StatelessWidget {
  static const route = '/category-select-screen';
  const CategorySelectScreen({super.key});

  @override
  Widget build(BuildContext context) {
    CategorySelectViewModel categorySelectViewModel =
        context.read<CategorySelectViewModel>();
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: IconButton(
              icon: SvgPicture.asset(Images.backButton),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            leadingWidth: 80.w),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              H(100),
              Text(
                'Category',
                style: getTextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff00040D)),
              ),
              H(18),
              ListView.separated(
                  shrinkWrap: true,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    CategoryModel categoryModel =
                        categorySelectViewModel.categoryList[index];
                    return InkWell(
                        onTap: () {
                          categorySelectViewModel.selectedCategory =
                              categoryModel;
                        },
                        child: CategoryCard(categoryModel: categoryModel));
                  },
                  separatorBuilder: (context, index) => H(12),
                  itemCount: categorySelectViewModel.categoryList.length),
              H(77),
              CommonButton(
                text: 'Done',
                onPressed: () {
                  Navigator.pushNamed(context, LocationPermissionScreen.route);
                },
              )
            ])));
  }
}
