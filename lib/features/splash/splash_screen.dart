import 'package:build_out/features/otp_verify/enter_number_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatefulWidget {
  static const route = '/splash-screen';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2)).then(
      (value) =>
          Navigator.pushReplacementNamed(context, EnterNumberScreen.route),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xffF7FAFF),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal:60.w ),
          child: Center(
              child: Image.asset(
                Images.logo,
                fit: BoxFit.fill,
              )),
        ));
  }
}
