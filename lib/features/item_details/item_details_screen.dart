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

class ItemDetailsScreen extends StatefulWidget {
  static const route = '/item-details-screen';
  const ItemDetailsScreen({super.key});

  @override
  State<ItemDetailsScreen> createState() => _ItemDetailsScreenState();
}

class _ItemDetailsScreenState extends State<ItemDetailsScreen> {
  int totalQuantity = 5001;
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
                  //extra-------------------------------------------------------------------
                  Container(
                    margin: EdgeInsets.only(top: 16.h),
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.5),
                    decoration: BoxDecoration(
                        color: primaryColor.withValues(alpha: .1),
                        borderRadius: BorderRadius.circular(12)),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SvgPicture.asset(
                          Images.upArrow,
                          height: 15.h,
                          width: 15.w,
                          fit: BoxFit.cover,
                        ),
                        W(6),
                        Text(
                          '6k+ Bought',
                          style: getTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff00040D)),
                        )
                      ],
                    ),
                  ),
                  //-----------------------------------------------------------------------
                  H(16),
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
                  //extra----------------------------------------------------------------
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _priceCard(price: '₹368.05'),
                        W(18),
                        _priceCard(price: '₹350.05', isColor: false),
                        W(18),
                        Container(
                            height: 110.h,
                            width: 125.w,
                            padding: EdgeInsets.symmetric(horizontal: 9.w),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: const Color(0xffAFAFB6), width: 1),
                                borderRadius: BorderRadius.circular(6)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '₹ Price on\nRequest',
                                    style: getTextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  H(4),
                                  Text(
                                    'Get quotations within 24hours',
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: getTextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff434343)),
                                  ),
                                  H(4),
                                  Text(
                                    'More than 5001 Bag',
                                    style: getTextStyle(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff434343)),
                                  ),
                                ]))
                      ],
                    ),
                  ),
                  H(16),
                  Text(
                    'Quantity',
                    style: getTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff434343)),
                  ),
                  H(8),
                  Row(
                    children: [
                      Container(
                        height: 42.h,
                        width: 205.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            border: Border.all(
                                color: const Color(0xffAFAFB6), width: 1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: () => setState(() {
                                totalQuantity = totalQuantity - 1;
                              }),
                              child: Container(
                                height: 42.h,
                                width: 42,
                                color: primaryColor.withValues(alpha: .1),
                                child: const Icon(
                                  Icons.remove,
                                  color: primaryColor,
                                  size: 18,
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text(
                              '$totalQuantity',
                              textAlign: TextAlign.center,
                              style: getTextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff434343)),
                            )),
                            InkWell(
                              onTap: () => setState(() {
                                totalQuantity = totalQuantity + 1;
                              }),
                              child: Container(
                                height: 42.h,
                                width: 42,
                                color: primaryColor.withValues(alpha: .1),
                                child: const Icon(
                                  Icons.add,
                                  color: primaryColor,
                                  size: 18,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      W(12),
                      Text(
                        'Bag',
                        style: getTextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff8E8E8E)),
                      )
                    ],
                  ),
                  H(8),
                  Text(
                    'Min. Order Qty. 80 Bag',
                    style: getTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff8E8E8E)),
                  ),

                  H(8),
                  RichText(
                    text: TextSpan(
                        text: 'Total: ',
                        style: getTextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xff00040D)),
                        children: [
                          TextSpan(
                            text: 'Total: Get quotations within 24 hours',
                            style: getTextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff00040D)),
                          )
                        ]),
                  ),
                  H(16),

                  //----------------------------------------------------------------------
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
                  const LookingForWidget(),
                  H(37),
                  const CommonButton(text: 'Enquiry now'),
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
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.srcIn),
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

  Container _priceCard({required String price, bool isColor = true}) {
    return Container(
      height: 110.h,
      width: 125.w,
      padding: EdgeInsets.symmetric(horizontal: 9.w, vertical: 16.h),
      decoration: BoxDecoration(
          color: isColor ? primaryColor.withValues(alpha: .1) : Colors.white,
          border: Border.all(color: const Color(0xffAFAFB6), width: 1),
          borderRadius: BorderRadius.circular(6)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
                text: price,
                style: getTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff00040D)),
                children: [
                  TextSpan(
                    text: '/Bag',
                    style: getTextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff00040D)),
                  )
                ]),
          ),
          H(4),
          Text(
            '₹288 + ₹80.60 GST',
            style: getTextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xff434343)),
          ),
          H(4),
          RichText(
            text: TextSpan(
                text: '₹380 ',
                style: getTextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff00040D)),
                children: [
                  TextSpan(
                    text: '(5% off)',
                    style: getTextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xffD21015)),
                  )
                ]),
          ),
          H(4),
          Text(
            '500 - 2000 Bag',
            style: getTextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: const Color(0xff434343)),
          )
        ],
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
            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
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
