import 'package:build_out/features/create_account/create_account_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

import '../../constants/text_styles.dart';
import '../../utils/images.dart';
import '../../widgets/common_button.dart';
import '../../widgets/gap.dart';

class OtpScreen extends StatelessWidget {
  static const route = '/otp-screen';
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var pinTheme = PinTheme(
      width: 56,
      height: 59,
      textStyle: getTextStyle(
          fontSize: 20, fontWeight: FontWeight.w700, color: const Color(0xff00040D)),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffAFAFB6), width: 1.5),
        borderRadius: BorderRadius.circular(8),
      ),
    );
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
            H(80),
            Pinput(
              length: 6,
              preFilledWidget: Text(
                '*',
                style: getTextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xffAFAFB6)),
              ),
              defaultPinTheme: pinTheme,
              focusedPinTheme: pinTheme.copyBorderWith(
                  border: Border.all(color: const Color(0xff00040D), width: 1.5)),
            ),
            H(60),
            Text(
              'Don’t receive the OTP?',
              style: getTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xffAFAFB6)),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  'RESEND OTP',
                  style: getTextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xffF15324)),
                )),
            const Spacer(),
             CommonButton(text: 'VERIFY' , onPressed: () {
              Navigator.pushNamed(context, CreateAccountScreen.route);
            },),
            H(100),
          ],
        ),
      ),
    );
  }
}
