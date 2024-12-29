import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/common_back_button.dart';
import 'widgets/looking_for_widget.dart';

class SortAndFilterScreen extends StatelessWidget {
  static const route = '/sort-and-filter-screen';
  const SortAndFilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const CommonBackButton(),
          title: const Text('Instant Adhesive'),
          actions: [
            IconButton(
                constraints: const BoxConstraints(),
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  Images.search,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(
                      Color(0xff434343), BlendMode.srcIn),
                )),
            IconButton(
                constraints: const BoxConstraints(),
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  Images.drawerIcon9,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(
                      Color(0xff434343), BlendMode.srcIn),
                )),
            IconButton(
                constraints: const BoxConstraints(),
                style: const ButtonStyle(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                onPressed: () {},
                icon: SvgPicture.asset(
                  Images.drawerIcon6,
                  height: 20.h,
                  width: 20.w,
                  fit: BoxFit.cover,
                  colorFilter: const ColorFilter.mode(
                      Color(0xff434343), BlendMode.srcIn),
                )),
            W(10)
          ],
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                H(10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: Row(
                    children: [
                      _itemCard('All', true),
                      W(12),
                      _itemCard('Ready to ship', false),
                    ],
                  ),
                ),
                H(15),
                const Divider(
                  color: Color(0xffAFAFB6),
                  thickness: 1,
                  height: 0,
                ),
                H(8),
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(
                        text: 'Displaying',
                        style: getTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff434343)),
                        children: [
                          TextSpan(
                            text: ' 46 matches ',
                            style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff434343)),
                          ),
                          TextSpan(
                            text: 'for ',
                            style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff434343)),
                          ),
                          TextSpan(
                            text: 'Instant Adhesive',
                            style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff434343)),
                          )
                        ]),
                  ),
                  H(24),
                  ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return _productCard(index + 1);
                      },
                      separatorBuilder: (context, index) => H(12),
                      itemCount: 4),
                  H(24),
                  const LookingForWidget(),
                  H(30),
                  Row(
                    children: [
                      Expanded(
                          child: CommonButton(
                        size: Size(double.infinity, 50.h),
                        bgcolor: Colors.white,
                        borderRadius: 4,
                        borderWidth: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              Images.sort,
                              height: 30.h,
                              width: 30.w,
                              fit: BoxFit.cover,
                            ),
                            W(6),
                            Text(
                              'SORT',
                              style: getTextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor),
                            )
                          ],
                        ),
                        onPressed: () {},
                      )),
                      W(10),
                      Expanded(
                          child: CommonButton(
                        size: Size(double.infinity, 50.h),
                        bgcolor: Colors.white,
                        borderRadius: 4,
                        borderWidth: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              Images.filter,
                              height: 30.h,
                              width: 30.w,
                              fit: BoxFit.cover,
                            ),
                            W(6),
                            Text(
                              'FILTER',
                              style: getTextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor),
                            )
                          ],
                        ),
                        onPressed: () {},
                      )),
                    ],
                  ),
                  H(30)
                ],
              ),
            ),
          )),
        ]));
  }

  Container _productCard(int index) {
    return Container(
      height: 119.h,
      padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 10.h),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: const Color(0xffAFAFB6), width: .3),
          borderRadius: BorderRadius.circular(4)),
      child: Row(
        children: [
          Image.asset(index % 2 == 0 ? Images.product11 : Images.product10),
          W(11),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'LOCTITE 415 20 gm Instant Adhesive',
                style: getTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff434343)),
              ),
              H(6),
              Text(
                'Price on request',
                style: getTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff434343)),
              )
            ],
          ))
        ],
      ),
    );
  }

  Container _itemCard(String title, bool isSelected) {
    return Container(
      height: 41.h,
      constraints: BoxConstraints(minWidth: 71.w),
      padding: EdgeInsets.symmetric(horizontal: 18.w),
      decoration: BoxDecoration(
          border: Border.all(
              color: isSelected ? primaryColor : const Color(0xffAFAFB6),
              width: 1),
          borderRadius: BorderRadius.circular(4)),
      alignment: Alignment.center,
      child: Text(
        title,
        style: getTextStyle(
            fontSize: 18,
            fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
            color: isSelected ? primaryColor : const Color(0xff00040D)),
      ),
    );
  }
}
