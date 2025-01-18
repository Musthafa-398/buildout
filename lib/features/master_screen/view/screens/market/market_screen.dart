import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/sort_and_filter/sort_and_filter_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_text_feild.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/colors.dart';
import '../home/home_screen.dart';
import '../home/sections/products_section.dart';


class MarketScreen extends StatelessWidget {
  const MarketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        H(30),
        SizedBox(
          height: 50,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Row(
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () => scaffoldKey.currentState?.openDrawer(),
                  child: Row(
                    children: [
                      W(10),
                      SvgPicture.asset(Images.menu),
                      W(6),
                      Text(
                        'MENU',
                        style: getTextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff00040D)),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Image.asset(Images.logo, height: 30.h, width: 210.w),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, SortAndFilterScreen.route);
                    },
                    icon: SvgPicture.asset(
                      Images.location,
                      height: 30.h,
                      width: 30.w,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: Stack(
                      children: [
                        SvgPicture.asset(Images.bag, height: 30.h, width: 30.w),
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
                                '2',
                                style: getTextStyle(
                                    fontSize: 8,
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white),
                              ),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              H(8),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: CommonTextFeild(
                    hintText: 'Search products',
                    borderRadius: 9,
                    prefixIcon: IconButton(
                      onPressed: null,
                      icon: SvgPicture.asset(
                        Images.search,
                        height: 20.h,
                        width: 20.w,
                        fit: BoxFit.fill,
                      ),
                    )),
              ),

              const ProductsSection()
             
            ],
          ),
        )
      ],
    ));
  }
}
