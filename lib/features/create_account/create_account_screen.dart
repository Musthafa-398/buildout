import 'package:build_out/constants/colors.dart';
import 'package:build_out/features/category_select/view/category_select_screen.dart';
import 'package:build_out/widgets/common_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/text_styles.dart';
import '../../utils/images.dart';
import '../../widgets/common_button.dart';
import '../../widgets/gap.dart';

class CreateAccountScreen extends StatelessWidget {
  static const route = '/create-account-screen';
  const CreateAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: SvgPicture.asset(Images.backButton),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          leadingWidth: 80.w),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            H(150),
            Text(
              'Create your account',
              style: getTextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff00040D)),
            ),
            Text(
              'Welcome to Build Out',
              textAlign: TextAlign.center,
              style: getTextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffAFAFB6)),
            ),
            H(18),
            const CommonTextFeild(
              hintText: 'Full Name',
            ),
            H(12),
            const CommonTextFeild(
              hintText: 'Email address',
            ),
            H(18),
            Text(
              "We use your Email I'd & Mobile Number to send your",
              style: getTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xffAFAFB6),
              ),
              textAlign: TextAlign.center,
            ),
            Text(
                'Account Activity, Booking Details & Invoices, Promotional details',
                style: getTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: primaryColor , decoration: TextDecoration.underline ,decorationColor: primaryColor ),
                textAlign: TextAlign.center ,),
            const Spacer(),
             CommonButton(text: 'Done', onPressed: () {
               Navigator.pushNamed(context, CategorySelectScreen.route);
             },),
            H(100),
          ],
        ),
      ),
    );
  }
}
