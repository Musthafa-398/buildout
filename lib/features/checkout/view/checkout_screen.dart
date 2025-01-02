import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/text_styles.dart';
import '../../../utils/images.dart';
import '../../../widgets/gap.dart';
import '../../master_screen/view/screens/home/home_screen.dart';

class CheckoutScreen extends StatelessWidget {
  static const route = '/checkout-screen';
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          H(30),
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                  bottom: BorderSide(color: Color(0xffAFAFB6), width: 1)),
            ),
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
                      onPressed: () {},
                      icon: SvgPicture.asset(Images.bag,
                          height: 30.h, width: 30.w)),
                ],
              ),
            ),
          ),
          // Container(
          //   height: 10.h,width: double.infinity,
          //   decoration: BoxDecoration(
          //     color: Colors.transparent,
          //     boxShadow: [
          //     BoxShadow(
          //         blurStyle: BlurStyle.outer,
          //         offset: const Offset(0, 1),
          //         blurRadius: 19,
          //         spreadRadius: 0,
          //         color: primaryColor.withValues(alpha: .25))
          //   ]),
          // ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                H(45),
                Row(
                  children: [
                    Image.asset(
                      Images.product4,
                      height: 82.h,
                      width: 60.w,
                      fit: BoxFit.cover,
                    ),
                    W(20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'ACC Concrete Cement',
                            style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff434343)),
                          ),
                          H(8),
                          Text(
                            '₹340.00',
                            style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff434343)),
                          ),
                          H(17),
                          Row(
                            children: [
                              Text(
                                'Quantity: 1kg',
                                style: getTextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xff434343)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    W(8),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: SvgPicture.asset(Images.delete , height: 25.h,width: 25.w,fit: BoxFit.cover,))
                      ],
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
