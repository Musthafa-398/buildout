import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/master_screen/view/screens/home/sections/products_section.dart';
import 'package:build_out/features/sort_and_filter/sort_and_filter_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_text_feild.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                IconButton(
                    onPressed: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                    icon: SvgPicture.asset(Images.menu)),
                Text(
                  'MENU',
                  style: getTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xff00040D)),
                ),
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
                    icon: SvgPicture.asset(Images.bag,
                        height: 30.h, width: 30.w)),
              ],
            ),
          ),
        ),
        H(15),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: CommonTextFeild(
              hintText: 'Search Designs',
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
        // const VideoSection()
      ],
    ));
  }
}
