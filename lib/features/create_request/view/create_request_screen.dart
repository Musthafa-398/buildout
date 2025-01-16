import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/checkout/view/checkout_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/common_text_feild.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../utils/constants.dart';
import '../../../widgets/common_back_button.dart';

class CreateRequestScreen extends StatefulWidget {
  static const route = '/create-request-screen';
  const CreateRequestScreen({super.key});

  @override
  State<CreateRequestScreen> createState() => _CreateRequestScreenState();
}

class _CreateRequestScreenState extends State<CreateRequestScreen> {
  int totalQuantity = 80;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leadingWidth: leadingWidth,
        leading: const CommonBackButton(),
        title: const Text('Create Request for Quote'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    H(20),
                    Row(
                      children: [
                        Image.asset(
                          Images.product4,
                          height: 81.h,
                          width: 67.w,
                          fit: BoxFit.cover,
                        ),
                        W(14),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'ACC Concrete Cement',
                              style: getTextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: const Color(0xff434343)),
                            ),
                            H(15),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  Images.edit,
                                  height: 15.h,
                                  width: 15.w,
                                  fit: BoxFit.cover,
                                ),
                                W(4),
                                Text(
                                  'Edit Specifications',
                                  style: getTextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: primaryColor),
                                )
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                    H(24),
                    Row(
                      children: [
                        Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: primaryColor),
                              child: const Icon(Icons.check , color: Colors.white  , size: 16),
                        ),
                      W(7),
                        Text(
                          'Allow quotes from other brands',
                          style: getTextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff434343)),
                        )
                      ],
                    ),
                    H(12),
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
                                    fontSize: 16,
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
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff8E8E8E)),
                        )
                      ],
                    ),
                    H(18),
                    const CommonTextFeild(
                      textHead: 'Delivery Pincode',
                      hintText: 'Delivery pincode',
                    ),
                    H(18),
                    CommonTextFeild(
                        textHead: 'Expected Delivery by',
                        hintText: 'Select date',
                        readOnly: true,
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(13),
                          child: SvgPicture.asset(
                            Images.calendar,
                            height: 20.h,
                            width: 20.w,
                            fit: BoxFit.cover,
                          ),
                        )),
                    H(18),
                    CommonTextFeild(
                        textHead: 'Pay on Order Placement',
                        hintText: 'Pay on order placement',
                        suffixIcon: TextButton(
                            onPressed: null,
                            child: Text(
                              '%',
                              style: getTextStyle(fontSize: 20),
                            ))),
                    H(18),
                    const CommonTextFeild(
                      hintText: 'Note for Sellers',
                      maxLine: 4,
                    ),
                    H(30),
                    CommonButton(
                      bgcolor: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Images.upload,
                            height: 25.h,
                            width: 25.w,
                            fit: BoxFit.cover,
                          ),
                          W(10),
                          Text(
                            'Upload Documents for Reference',
                            style: getTextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: primaryColor),
                          )
                        ],
                      ),
                    ),
                    H(18),
                    CommonButton(
                      text: 'Submit Request',
                      onPressed: () {
                        Navigator.pushNamed(context, CheckoutScreen.route);
                      },
                    ),
                    H(30)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
