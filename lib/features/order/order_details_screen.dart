import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../widgets/common_back_button.dart';
import '../../widgets/gap.dart';

class OrderDetailsScreen extends StatelessWidget {
  static const route = '/order-details-screen';
  const OrderDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
                        Row(
                          children: [
                            Container(
                              height: 76.h,
                              width: 75.w,
                              padding: const EdgeInsets.symmetric(
                                  vertical: 7, horizontal: 15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                color: const Color(0xffD9D9D9),
                              ),
                              child: Image.asset(Images.product5),
                            ),
                            W(13),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Order ID #123456',
                                    style: getTextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff00040D)),
                                  ),
                                  H(6),
                                  Text(
                                    'ACC Concrete Cement',
                                    style: getTextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff8E8E8E)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        H(12),
                        Row(
                          children: [
                            Expanded(
                                child: CommonButton(
                              size: Size(double.infinity, 50.h),
                              borderRadius: 4,
                              borderWidth: 1,
                              bgcolor: primaryColor.withValues(alpha: .1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    Images.track,
                                    height: 25.h,
                                    width: 25.w,
                                    fit: BoxFit.cover,
                                  ),
                                  W(6),
                                  Text(
                                    'Track',
                                    style: getTextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff434343)),
                                  )
                                ],
                              ),
                            )),
                            W(10),
                            Expanded(
                                child: CommonButton(
                              size: Size(double.infinity, 50.h),
                              borderRadius: 4,
                              borderWidth: 1,
                              bgcolor: primaryColor.withValues(alpha: .1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    Images.cancel,
                                    height: 25.h,
                                    width: 25.w,
                                    fit: BoxFit.cover,
                                  ),
                                  W(6),
                                  Text(
                                    'Cancel',
                                    style: getTextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff434343)),
                                  )
                                ],
                              ),
                            )),
                          ],
                        ),
                        H(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Delivery Address',
                              style: getTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff00040D)),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Edit',
                                  style: getTextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: primaryColor),
                                ))
                          ],
                        ),
                        H(16),
                        Text(
                          '2972 Westheimer Rd. Santa Ana,',
                          style: getTextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff434343)),
                        ),
                        H(6),
                        Text(
                          '+123-456789',
                          style: getTextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff434343)),
                        ),
                        H(30),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Payment Details',
                              style: getTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff00040D)),
                            ),
                            const Icon(
                              Icons.keyboard_arrow_up_rounded,
                              color: Color(0xff8E8E8E),
                              size: 34,
                            )
                          ],
                        ),
                        H(16),
                        _dataRow(title: 'Payment Details', value: ' ₹ 340'),
                        _dataRow(
                            title: 'Promo Code',
                            value: 'BOXPJ',
                            textStyle: getTextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w700,
                                color: primaryColor)),
                        _dataRow(title: 'Delivery fee', value: '0'),
                        _dataRow(title: 'Total', value: ' ₹ 340'),
                        H(28),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Status',
                                  style: getTextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff8E8E8E)),
                                ),
                                H(3),
                                Text(
                                  'Confirmed',
                                  style: getTextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: primaryColor),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Need help?',
                                  style: getTextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                      color: const Color(0xff8E8E8E)),
                                ),
                                H(3),
                                Text(
                                  'Enquire',
                                  style: getTextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff434343)),
                                ),
                              ],
                            ),
                            W(12),
                            SvgPicture.asset(
                              Images.help,
                              height: 34.h,
                              width: 34.w,
                              fit: BoxFit.cover,
                            )
                          ],
                        )
                      ])))
        ]));
  }

  Padding _dataRow(
      {required String title, required String value, TextStyle? textStyle}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: getTextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w400,
                color: const Color(0xff8E8E8E)),
          ),
          Text(
            value,
            style: textStyle ??
                getTextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff434343)),
          )
        ],
      ),
    );
  }
}
