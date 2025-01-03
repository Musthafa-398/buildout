import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/master_screen/view/master_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class OrderConfirmScreen extends StatelessWidget {
  static const route = '/order-confirm-screen';
  const OrderConfirmScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(
            Images.orderConfirm,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Images.confirm,
                      fit: BoxFit.cover, height: 156.h, width: 156.w),
                  H(100),
                  Text(
                    'Order Confirmed',
                    style: getTextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff00040D)),
                  ),
                  H(18),
                  Text(
                    'Thank you for your order you will\nreceive email confirmation shortly.',
                    textAlign: TextAlign.center,
                    style: getTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff434343)),
                  ),
                  H(18),
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text: 'Check the status of your order\non the',
                        style: getTextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff434343)),
                        children: [
                          TextSpan(
                            text: ' order tracking ',
                            style: getTextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff434343)),
                          ),
                          TextSpan(
                            text: 'page.',
                            style: getTextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff434343)),
                          )
                        ]),
                  ),
                  H(100),
                  CommonButton(
                    text: 'Continue Shopping',
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, MasterScreen.route, (route) => false);
                    },
                  ),
                  H(20),
                  CommonButton(
                    borderColor: const Color(0xff434343),
                    borderWidth: 1,
                    bgcolor: const Color(0xffF7FAFF),
                    text: 'Back',
                    textStyle: getTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff434343)),
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, MasterScreen.route, (route) => false);
                    },
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
