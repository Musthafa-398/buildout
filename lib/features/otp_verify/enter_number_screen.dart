import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/otp_verify/otp_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/common_text_feild.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EnterNumberScreen extends StatelessWidget {
  static const route = '/enter-number-screen';
  const EnterNumberScreen({super.key});

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
        leadingWidth: 80.w,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Images.login,
                height: 215.h,
                width: 244.w,
              ),
            ),
            H(42),
            Text(
              'OTP Verification',
              style: getTextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff00040D)),
            ),
            H(24),
            Text(
              'We will send you an One Time Password\nOn this mobile number',
              textAlign: TextAlign.center,
              style: getTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffAFAFB6)),
            ),
            H(100),
            Text(
              'Enter Mobile Number',
              style: getTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff00040D)),
            ),
            H(24),
            CommonTextFeild(
              hintText: '1234-567-890',
              prefixIcon: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  W(16),
                  Text(
                    '+91',
                    style: getTextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffAFAFB6),
                    ),
                  ),W(6),
                  const SizedBox(
                      height: 54,
                      child: VerticalDivider(
                        thickness: 1.5,
                        color: Color(0xffAFAFB6),
                      )) ,
                ],
              ),
            ),
            const Spacer(),
             CommonButton(text: 'Generate OTP' , onPressed: (){
              Navigator.pushNamed(context, OtpScreen.route);
             }),
            H(100),
          ],
        ),
      ),
    );
  }
}
