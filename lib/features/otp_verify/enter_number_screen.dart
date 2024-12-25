import 'package:build_out/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class EnterNumberScreen extends StatelessWidget {
 static const route ='/enter-number-screen';
  const EnterNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(  appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading:IconButton(
      icon: SvgPicture.asset(Images.backButton),
      onPressed: () {
        Navigator.pop(context);
      },
    ),
        leadingWidth: 80.w,
      ),);
  }
}