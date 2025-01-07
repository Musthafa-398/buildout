import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/category_select/model/category_model.dart';
import 'package:build_out/features/master_screen/view/screens/home/widgets/home_screen_item_card.dart';
import 'package:build_out/widgets/common_back_button.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../utils/images.dart';

class ItemsSeeAllScreen extends StatefulWidget {
  static const route = '/items-see-all-screen';
  const ItemsSeeAllScreen({super.key});

  @override
  State<ItemsSeeAllScreen> createState() => _ItemsSeeAllScreenState();
}

class _ItemsSeeAllScreenState extends State<ItemsSeeAllScreen> {
  List<ItemModel> itemsList = [
    ItemModel(id: 1, image: null, title: 'Adhesives'),
    ItemModel(id: 2, image: null, title: 'Sealants')
  ];
  int selectedIndex = 1;
  List<ItemModel> itemsList1 = [
    ItemModel(image: Images.product1, title: 'Pidilitee Pidilitre'),
    ItemModel(image: Images.product2, title: 'Fevicol SR 998'),
    ItemModel(image: Images.product2, title: 'Fevicol SR 998'),
    ItemModel(image: Images.product1, title: 'Pidilitee Pidilitre'),
    ItemModel(image: Images.product1, title: 'Pidilitee Pidilitre'),
    ItemModel(image: Images.product2, title: 'Fevicol SR 998'),
    ItemModel(image: Images.product2, title: 'Fevicol SR 998'),
  ];
  List<ItemModel> itemsList2 = [
    ItemModel(image: Images.product1, title: 'Pidilitee Pidilitre'),
    ItemModel(image: Images.product2, title: 'Fevicol SR 998'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const CommonBackButton(),
          title: const Text('Adhesives & Sealants'),
        ),
        body: Column(
          children: [
            Container(
              height: 10.h,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: const Border(
                      bottom: BorderSide(color: Color(0xffAFAFB6), width: 1)),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 1),
                        blurRadius: 19,
                        spreadRadius: 0,
                        color: primaryColor.withValues(alpha: .25))
                  ]),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: 162.w,
                      // height: 700,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              right: BorderSide(
                                  color: Color(0xffAFAFB6), width: .3))),
                      child: ListView.separated(
                          // shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return leftCard(
                              itemsList[index],
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(
                                color: Color(0xffAFAFB6),
                                thickness: .3,
                                height: 0,
                              ),
                          itemCount: itemsList.length)),
                  Expanded(
                      child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.w, vertical: 17.h),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Adhesives',
                            style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff00040D)),
                          ),
                          H(18),
                          GridView.builder(physics: const NeverScrollableScrollPhysics(),
                            itemCount: itemsList1.length,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 97 / 130,
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.w,
                                mainAxisSpacing: 18.h),
                            itemBuilder: (context, index) {
                              ItemModel item = itemsList1[index];
                              return HomeScreenItemCard(
                                  title: item.title, image: item.image ?? '');
                            },
                          ),
                          H(30),
                          Text(
                            'Sealants',
                            style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff00040D)),
                          ),
                          H(18),
                          GridView.builder(physics: const NeverScrollableScrollPhysics(),
                            itemCount: itemsList2.length,
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 97 / 130,
                                crossAxisCount: 2,
                                crossAxisSpacing: 20.w,
                                mainAxisSpacing: 18.h),
                            itemBuilder: (context, index) {
                              ItemModel item = itemsList2[index];
                              return HomeScreenItemCard(
                                  title: item.title, image: item.image ?? '');
                            },
                          ) ,
                          H(30)
                        
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            )
          ],
        ));
  }

  Widget leftCard(ItemModel item) {
    return InkWell(
      onTap: () => setState(() {
        selectedIndex = item.id ?? 0;
      }),
      child: Row(
        children: [
          Container(
            height: 56.h,
            width: 7,
            margin: EdgeInsets.only(right: 13.w),
            decoration: BoxDecoration(
                color: selectedIndex == item.id ? primaryColor : Colors.white,
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(6),
                    bottomRight: Radius.circular(6))),
          ),
          Text(
            item.title,
            style: getTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: selectedIndex == item.id
                    ? primaryColor
                    : const Color(0xff434343)),
          )
        ],
      ),
    );
  }
}
