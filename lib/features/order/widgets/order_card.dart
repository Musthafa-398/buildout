
import 'package:build_out/features/order/order_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/gap.dart';

class OrderCard extends StatelessWidget {
  final String image;
  const OrderCard({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 76.h,
              width: 75.w,
              padding:
                  EdgeInsets.symmetric(vertical: 7, horizontal: 15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4),
                color: Color(0xffD9D9D9),
              ),
              child: Image.asset(image),
            ),
            W(13),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order ID #123456',
                    style: getTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff00040D)),
                  ),
                  H(6),
                  Text(
                    'ACC Concrete Cement',
                    style: getTextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff8E8E8E)),
                  ),
                ],
              ),
            ),
            CommonButton(
              text: 'Order details',
              textStyle: getTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: primaryColor),
              bgcolor: Color(0xffF7FAFF),
              borderRadius: 4,
              size: Size(125.w, 41.h),onPressed: () {
                Navigator.pushNamed(context, OrderDetailsScreen.route);
              },
            )
          ],
        ),
        H(12),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Status',
                  style: getTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8E8E8E)),
                ),
                Text(
                  'Arriving tomorrow',
                  style: getTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff434343)),
                )
              ],
            ),
            W(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Total Price',
                  style: getTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff8E8E8E)),
                ),
                Text(
                  ' ₹ 340',
                  style: getTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff434343)),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
