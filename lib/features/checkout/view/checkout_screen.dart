import 'package:build_out/constants/colors.dart';
import 'package:build_out/features/address/view/address_screen.dart';
import 'package:build_out/features/order_confirm/order_confirm_screen.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/text_styles.dart';
import '../../../utils/images.dart';
import '../../../widgets/gap.dart';
import 'widgets/checkout_item_card.dart';

class CheckoutScreen extends StatelessWidget {
  static const route = '/checkout-screen';
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // H(30),
          Container(
            // height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border: const Border(
                    bottom: BorderSide(color: Color(0xffAFAFB6), width: 1)),
                boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      offset: const Offset(0.0, 0.75),
                      blurRadius: 19,
                      spreadRadius: 0,
                      color: primaryColor.withValues(alpha: .25))
                ]),
            child: Column(
              children: [
                H(30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {},
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
                H(5)
              ],
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  H(5),
                  ListView.separated(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) {
                        return CheckoutItemCard(
                          image: index == 0 ? Images.product4 : Images.product5,
                        );
                      },
                      separatorBuilder: (context, index) => const Divider(
                            color: Color(0xffAFAFB6),
                            height: 60,
                            thickness: 1,
                          ),
                      itemCount: 2),
                  H(30),
                  Container(
                    height: 48.h,
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                        color: const Color(0xffAFAFB6).withValues(alpha: .4),
                        borderRadius: BorderRadius.circular(9)),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          Images.coupon,
                          height: 20.h,
                          width: 20.w,
                          fit: BoxFit.cover,
                          colorFilter: const ColorFilter.mode(
                              Color(0xff00040D), BlendMode.srcIn),
                        ),
                        W(6),
                        Text(
                          'Apply coupon code',
                          style: getTextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff00040D)),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Color(0xff8E8E8E),
                          size: 18,
                        ),
                        W(5)
                      ],
                    ),
                  ),
                  H(30),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 13.h),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffAFAFB6), width: 1),
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Subtotal:',
                              style: getTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff434343)),
                            ),
                            Text(
                              '₹680.00',
                              style: getTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff434343)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 13.h),
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                          vertical:
                              BorderSide(color: Color(0xffAFAFB6), width: 1)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping Address',
                              style: getTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor),
                            ),
                            CommonButton(
                              size: Size(153.w, 29.h),
                              text: 'Add address +',
                              textStyle: getTextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor),
                              bgcolor: Colors.white,onPressed: () => Navigator.pushNamed(context, AddressScreen.route),
                            )
                          ],
                        ),
                        H(10),
                        Text(
                          'Enter your address to view shipping options.',
                          style: getTextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff434343)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.w, vertical: 13.h),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xffAFAFB6), width: 1),
                        borderRadius: const BorderRadius.only(
                            bottomLeft: Radius.circular(8),
                            bottomRight: Radius.circular(8))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Total',
                              style: getTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff434343)),
                            ),
                            Text(
                              '₹680.00',
                              style: getTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff434343)),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  H(50),
                  CommonButton(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Images.bag, height: 30.h, width: 30.w),
                        W(10),
                        Text(
                          'Proceed to checkout',
                          style: getTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xffF7FAFF)),
                        )
                      ],
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, OrderConfirmScreen.route);
                    },
                  ),
                  H(50)
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
