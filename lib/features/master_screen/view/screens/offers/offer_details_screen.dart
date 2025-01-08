import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_styles.dart';
import '../../../../../widgets/common_back_button.dart';
import '../../../../../widgets/gap.dart';

class OfferDetailsScreen extends StatelessWidget {
  static const route = '/offer-details-screen';
  const OfferDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text('Offers',
            style: getTextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: primaryColor)),
      ),
      body: Column(
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
                  padding: EdgeInsets.symmetric(horizontal: 41.w),
                  child: Column(children: [
                    H(40),
                    Container(
                      height: 189.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF7FAFF),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(2, 3),
                                blurRadius: 18.8,
                                spreadRadius: 0,
                                color: const Color(0xff000000)
                                    .withValues(alpha: .2))
                          ],
                          image: const DecorationImage(
                              image: AssetImage(Images.offer4),
                              fit: BoxFit.cover)),
                    ),
                    H(16),
                    Text(
                      'Invite a friend and both get \$20 off your next purchase.',
                      style: getTextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xff00040D)),
                    ),
                    H(16),
                    Text(
                      'The "Invite a Friend and Both Get \$20 Off Your Next Purchase" program is designed to reward our loyal customers while helping them share the benefits of our platform with friends and family. This referral program is simple, beneficial, and ensures both the inviter (referrer) and their invited friend (referee) enjoy savings on future purchases.',
                      style: getTextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff434343)),
                    ),
                    H(40),
                    Text(
                      'Your unique invite code',
                      style: getTextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffAFAFB6)),
                    ),
                    H(6),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Images.link,
                            height: 30.h, width: 30.w, fit: BoxFit.cover),
                        W(3),
                        Text('https://buildout.com/0001',
                            style: getTextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                                color: primaryColor))
                      ],
                    ),
                    H(6),
                    CommonButton(
                      size: Size(264.w, 40.h),
                      text: 'Copy Link',
                      textStyle: getTextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: primaryColor),
                      bgcolor: const Color(0xffF7FAFF),
                      borderWidth: 1,
                    )
                  ])))
        ],
      ),
    );
  }
}
