import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/category_select/model/category_model.dart';
import 'package:build_out/features/help/help_screen.dart';
import 'package:build_out/features/master_screen/view/screens/home/home_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DrawerSection extends StatelessWidget {
  const DrawerSection({super.key});

  @override
  Drawer build(BuildContext context) {
    List<ItemModel> itemsList = [
      ItemModel(image: Images.drawerIcon1, title: 'Change main category'),
      ItemModel(image: Images.drawerIcon2, title: 'Sell on build out'),
      ItemModel(image: Images.drawerIcon3, title: 'My Project'),
      ItemModel(image: Images.drawerIcon4, title: 'My Order'),
      ItemModel(image: Images.drawerIcon5, title: 'My wish List'),
      ItemModel(image: Images.drawerIcon6, title: 'My Cart'),
      ItemModel(image: Images.drawerIcon7, title: 'My Rewards'),
      ItemModel(image: Images.drawerIcon8, title: 'Scheme & Offers'),
      ItemModel(image: Images.drawerIcon9, title: 'Notification'),
      ItemModel(image: Images.drawerIcon10, title: 'Help & Support'),
      ItemModel(image: Images.drawerIcon11, title: 'About Us'),
      ItemModel(
          image: Images.drawerIcon12, title: 'Privacy & Terms & condition'),
      ItemModel(image: Images.drawerIcon13, title: 'Legal'),
    ];
    return Drawer(
      shape: const BeveledRectangleBorder(),
      backgroundColor: const Color(0xffF7FAFF),
      width: 327.w,
      child: Column(
        children: [
          Container(
            height: 117.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
            decoration: BoxDecoration(color: primaryColor, boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 1),
                  blurRadius: 19,
                  spreadRadius: 0,
                  color: primaryColor.withValues(alpha: .25))
            ]),
            alignment: Alignment.bottomLeft,
            child: Text(
              'Hello!',
              style: getTextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Colors.white),
            ),
          ),
          H(10),
          Expanded(
            child: ListView.builder(
              itemCount: itemsList.length,
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                ItemModel item = itemsList[index];
                return ListTile(
                  onTap: () {if(index==9){
                    scaffoldKey.currentState?.closeDrawer();
                    Navigator.pushNamed(context, HelpScreen.route);
                  }},
                  leading: SvgPicture.asset(
                    item.image??'',
                    height: 25.h,
                    width: 25.w,
                    fit: BoxFit.cover,
                  ),
                  title: Text(
                    item.title,
                    style: getTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff8E8E8E)),
                  ),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 0),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
