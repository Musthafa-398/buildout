import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/common_dropdown.dart';
import 'package:build_out/widgets/common_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/common_back_button.dart';
import '../../../widgets/gap.dart';

class AddAddressScreen extends StatelessWidget {
  static const route = '/add-address-screen';
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
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
                      const CommonBackButton(),
                      const Spacer(),
                      Text('New Address',
                          style: getTextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: primaryColor)),
                      const Spacer(),
                      const SizedBox(width: 20)
                    ],
                  ),
                ),
                H(5)
              ],
            ),
          ),
          H(25),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                      height: 170.h,
                      width: double.infinity,
                      color: Colors.amber),
                  H(24),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(12.w, 10.h, 12.w, 16.h),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: primaryColor.withValues(alpha: .1),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Receiver details for this address',
                                      style: getTextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff8E8E8E)),
                                    ),
                                    H(14),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          Images.call,
                                          height: 15.h,
                                          width: 15.w,
                                          fit: BoxFit.cover,
                                        ),
                                        W(6),
                                        Text(
                                          'Anandeswar M, 123456789',
                                          style: getTextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff434343)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xff8E8E8E),
                              )
                            ],
                          ),
                        ),
                        H(24),
                        const CommonTextFeild(
                          textHead: 'First Name',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Last Name',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonDropdown(
                          textHead: 'Country / Region',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Street Address',
                          hintText: 'House number & street name',
                          isMandatory: true,
                        ),
                        H(12),
                        const CommonTextFeild(
                          hintText: 'Apartment, Suite, Unit, etc (optional)',
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Town / City',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonDropdown(
                          textHead: 'State',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Pincode',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Phone Number',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Email Address',
                          isMandatory: true,
                        ),
                        H(15),
                        Row(
                          children: [
                            Checkbox(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(3)),
                                activeColor: primaryColor,
                                value: true,
                                onChanged: (value) {}),
                            Text(
                              'Set as your default address',
                              style: getTextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff434343)),
                            )
                          ],
                        ),
                        H(23),
                        const CommonButton(text: 'Save Address'),
                        H(30)
                      ],
                    ),
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
