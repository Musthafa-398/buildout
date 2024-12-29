import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/sort_and_filter/widgets/looking_for_widget.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_back_button.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'sections/stepper_section.dart';

class ItemDetailsScreen extends StatelessWidget {
  static const route = '/item-details-screen';
  const ItemDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: const CommonBackButton()),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H(10),
            Image.asset(
              Images.itemBig,
              height: 314.h,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            H(30),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '1 × 3 ft Air grill horizontal louvers',
                    style: getTextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff00040D)),
                  ),
                  H(20),
                  Row(
                    children: [
                      Text(
                        'Ready to Ship',
                        style: getTextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff00040D)),
                      ),
                      W(6),
                      SvgPicture.asset(
                        Images.ship,
                        height: 30.h,
                        width: 30.w,
                        fit: BoxFit.cover,
                      )
                    ],
                  ),
                  H(16),
                  RichText(
                    text: TextSpan(
                        text: 'Total: ',
                        style: getTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff00040D)),
                        children: [
                          TextSpan(
                              text: '₹1400',
                              style: getTextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor))
                        ]),
                  ),
                  H(16),
                  const Divider(
                    color: Color(0xffAFAFB6),
                    thickness: .5,
                    height: 0,
                  ),
                  H(16),
                  Text(
                    'Offers',
                    style: getTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff434343)),
                  ),
                  H(16),
                  Row(
                    children: [
                      SvgPicture.asset(
                        Images.offer2,
                        height: 20.h,
                        width: 20.w,
                        fit: BoxFit.cover,
                      ),
                      W(9),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                              text: 'Get GST invoice and',
                              style: getTextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff434343)),
                              children: [
                                TextSpan(
                                    text: ' save up to 28% ',
                                    style: getTextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w700,
                                        color: const Color(0xff434343))),
                                TextSpan(
                                    text: 'on business purchases.',
                                    style: getTextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff434343)))
                              ]),
                        ),
                      )
                    ],
                  ),
                  H(16),
                  const Divider(
                    color: Color(0xffAFAFB6),
                    thickness: .5,
                    height: 0,
                  ),
                  H(16),
                  Text(
                    'Sold by   MAMSONS INDIA STEEL PROCESSORS',
                    style: getTextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff434343)),
                  ),
                  H(6),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                            color: primaryColor.withValues(alpha: .1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            SvgPicture.asset(
                              Images.like,
                              height: 15.h,
                              width: 15.w,
                              fit: BoxFit.cover,
                            ),
                            W(3),
                            Text(
                              'Trusted',
                              style: getTextStyle(
                                  color: const Color(0xff434343),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            )
                          ],
                        ),
                      ),
                      W(12),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(color: primaryColor, width: 1),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Text(
                              '4.3',
                              style: getTextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: primaryColor),
                            ),
                            W(3),
                            const Icon(
                              Icons.star,
                              color: primaryColor,
                              size: 18,
                            )
                          ],
                        ),
                      ),
                      W(12),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 6.w,
                          vertical: 3.h,
                        ),
                        decoration: BoxDecoration(
                            color: const Color(0xffEEEEEE),
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            Text(
                              'Surat',
                              style: getTextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff8E8E8E)),
                            ),
                            W(3),
                            SvgPicture.asset(
                              Images.location,
                              colorFilter: const ColorFilter.mode(
                                  Color(0xff8E8E8E), BlendMode.srcIn),
                              height: 15.h,
                              width: 15.w,
                              fit: BoxFit.cover,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  H(44),
                  const Divider(
                    color: Color(0xffAFAFB6),
                    thickness: .5,
                    height: 0,
                  ),
                  H(16),
                  Text(
                    'Specification',
                    style: getTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff434343)),
                  ),
                  H(12),
                  _specificationWidget(
                      title: 'Air Flow Rate',
                      value: '200CFM',
                      isBackgroundColor: true),
                  _specificationWidget(
                      title: 'Material',
                      value: 'Mild Steel',
                      isBackgroundColor: false),
                  _specificationWidget(
                      title: 'Type',
                      value: 'Horizontal Louvres',
                      isBackgroundColor: true),
                  _specificationWidget(
                      title: 'Size (L×H)',
                      value: '1×3 ft',
                      isBackgroundColor: false),
                  H(16),
                  Text(
                    'About the product',
                    style: getTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xff434343)),
                  ),
                  H(9),
                  Text(
                    'Country of Origin',
                    style: getTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff434343)),
                  ),
                  H(9),
                  Text(
                    'India',
                    style: getTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff434343)),
                  ),
                  H(16),
                  _aboutProductCard(Images.ship, '10 Days Assured Delivery'),
                  H(9),
                  _aboutProductCard(Images.returnIcon, '7 Days Return'),
                  H(9),
                  _aboutProductCard(Images.payment, 'Payment Protection'),
                  H(16),
                  const StepperSection(),
                  H(16),
                  LookingForWidget(),
                  H(37),
                  CommonButton(text: 'Enquiry now'),
                  H(18),
                  CommonButton(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          Images.bag,
                          height: 30.h,
                          width: 30.w,
                          fit: BoxFit.cover,
                          colorFilter:
                              ColorFilter.mode(Colors.white, BlendMode.srcIn),
                        ),
                        W(10),
                        Text(
                          'Add to Cart',
                          style: getTextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                  H(100)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _aboutProductCard(String image, String description) {
    return Row(
      children: [
        Container(
          height: 30.h,
          width: 30.w,
          margin: EdgeInsets.only(right: 3.w),
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: primaryColor),
          alignment: Alignment.center,
          child: SvgPicture.asset(
            image,
            height: 20.h,
            width: 20.w,
            fit: BoxFit.cover,
            color: Colors.white,
          ),
        ),
        Text(
          description,
          style: getTextStyle(
              fontSize: 17, fontWeight: FontWeight.w400, color: primaryColor),
        )
      ],
    );
  }

  Container _specificationWidget(
      {required String title,
      required String value,
      required bool isBackgroundColor}) {
    return Container(
      height: 36.h,
      margin: const EdgeInsets.symmetric(vertical: 3),
      color: isBackgroundColor ? const Color(0xffF5F5F5) : Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: getTextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xff8E8E8E)),
          ),
          Text(
            value,
            style: getTextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: const Color(0xff434343)),
          )
        ],
      ),
    );
  }
}
