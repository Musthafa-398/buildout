import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/category_select/model/category_model.dart';
import 'package:build_out/features/items_see_all/items_see_all_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../widgets/gap.dart';
import '../widgets/home_screen_item_card.dart';

class ProductsSection extends StatelessWidget {
  const ProductsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<ItemModel> itemsList1 = [
      ItemModel(image: Images.product1, title: 'Pidilitee Pidilitre'),
      ItemModel(image: Images.product2, title: 'Fevicol SR 998'),
      ItemModel(image: Images.product3, title: 'Araldite Standard')
    ];
    List<ItemModel> itemsList2 = [
      ItemModel(image: Images.product4, title: 'Cement'),
      ItemModel(image: Images.product5, title: 'Cementitious Coating'),
      ItemModel(image: Images.product6, title: 'Cementitious Coating')
    ];
    List<ItemModel> itemsList3 = [
      ItemModel(image: Images.product7, title: 'Pidilitee Pidilitre'),
      ItemModel(image: Images.product8, title: 'Fevicol SR 998'),
      ItemModel(image: Images.product9, title: 'Araldite Standard')
    ];
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, right: 10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              H(20),
              _viewAllHeading('Adhesives & Sealants', context),
              H(20),
              SizedBox(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      ItemModel item = itemsList1[index];
                      return HomeScreenItemCard(
                        title: item.title,
                        image: item.image??'',
                      );
                    },
                    separatorBuilder: (context, index) => W(10),
                    itemCount: itemsList1.length),
              ),
              H(20),
              _viewAllHeading('Cement & Cementitious Products', context),
              H(20),
              SizedBox(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      ItemModel item = itemsList2[index];
                      return HomeScreenItemCard(
                        title: item.title,
                        image: item.image??'',
                      );
                    },
                    separatorBuilder: (context, index) => W(10),
                    itemCount: itemsList2.length),
              ),
              H(20),
              _viewAllHeading('Construction Chemicals', context),
              H(20),
              SizedBox(
                height: 150,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      ItemModel item = itemsList3[index];
                      return HomeScreenItemCard(
                        title: item.title,
                        image: item.image??'',
                      );
                    },
                    separatorBuilder: (context, index) => W(10),
                    itemCount: itemsList3.length),
              ),
              H(20)
            ],
          ),
        ),
      ),
    );
  }

  Row _viewAllHeading(String title, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: getTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xff00040D)),
        ),
        TextButton(
          onPressed: () {
            Navigator.pushNamed(context, ItemsSeeAllScreen.route);
          },
          child: Text(
            'View All',
            style: getTextStyle(
                fontSize: 14, fontWeight: FontWeight.w700, color: primaryColor),
          ),
        )
      ],
    );
  }
}
