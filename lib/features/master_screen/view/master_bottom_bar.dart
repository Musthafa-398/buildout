import 'dart:io';

import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../constants/colors.dart';
import '../../../widgets/gap.dart';
import '../model/bottom_bar_item_model.dart';
import '../view_model/master_view_model.dart';

class MasterBottomBar extends StatelessWidget {
  const MasterBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height:  100.h,
        decoration: const BoxDecoration(
            color: Color(0xffF7FAFF),
            border:
                Border(top: BorderSide(color: Color(0xffAFAFB6), width: 1))),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.w, horizontal: 4.w),
          child: Consumer<MasterViewModel>(
            builder: (context, provider, child) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: bottomBarItems.map((e) {
                  int index = bottomBarItems.indexOf(e);
                  TextStyle textStyle = getTextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff434343));
                  Color iconColor = const Color(0xff434343);
                  if (index == provider.selectedIndex) {
                    textStyle = getTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                        color: primaryColor);
                    iconColor = primaryColor;
                  }
                  return Expanded(
                    child: InkWell(
                      onTap: () async {
                        provider.selectedIndex = index;
                        if (index == 0) {
                          _onIndexZeroPressed(context: context);
                        } else if (index == 1) {
                          _onIndexOnePressed(context: context);
                        } else if (index == 2) {
                          _onIndexTwoPressed(context: context);
                        } else {
                          _onIndexThreePressed(context: context);
                        }
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset(
                                e.icon,
                                height: 32.h,
                                width: 32.w,
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    iconColor, BlendMode.srcIn),
                              ),
                              if (e.count != null)
                                Positioned(
                                    top: 1,
                                    right: .3,
                                    child: Container(
                                      height: 14,
                                      width: 14,
                                      decoration: BoxDecoration(
                                          color: primaryColor,
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: const Color(0xffF7FAFF),
                                              width: .5)),
                                      alignment: Alignment.center,
                                      child: Text(
                                        '${e.count}',
                                        style: getTextStyle(
                                            fontSize: 8,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white),
                                      ),
                                    ))
                            ],
                          ),
                          H(3),
                          Text(e.title, style: textStyle),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              );
            },
          ),
        ));
  }

  _onIndexZeroPressed({required BuildContext context}) {}

  _onIndexOnePressed({required BuildContext context}) {}

  _onIndexTwoPressed({required BuildContext context}) async {}

  _onIndexThreePressed({required BuildContext context}) async {}
}

final bottomBarItems = [
  BottomBarItemModel(title: 'Home', icon: Images.home),
  BottomBarItemModel(title: 'Offers', icon: Images.offers, count: 1),
  BottomBarItemModel(title: 'Market', icon: Images.market),
  BottomBarItemModel(title: 'Mails', icon: Images.mail, count: 2),
  BottomBarItemModel(title: 'Profile', icon: Images.profile),
];
