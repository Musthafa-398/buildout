import 'package:build_out/utils/constants.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../widgets/common_back_button.dart';
import 'widgets/order_card.dart';

class OrderListingScreen extends StatelessWidget {
  static const route = '/order-listing-screen';
  const OrderListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(leadingWidth: leadingWidth,
          backgroundColor: Colors.white,
          leading: const CommonBackButton(),
          centerTitle: true,
          title: Text('My Order',
              style: getTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: primaryColor)),
        ),
        body: Column(children: [
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
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H(30),
               ListView.separated(
                shrinkWrap: true,padding: EdgeInsets.zero,
                itemBuilder: (context, index) {
                 return OrderCard(image: index==0?Images.product4:Images.product5);
               }, separatorBuilder: 
               (context, index) => H(30), itemCount: 2)
              ],
            ),
          ))
        ]));
  }
}
