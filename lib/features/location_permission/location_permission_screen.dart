import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/master_screen/view/master_screen.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/images.dart';
import '../../widgets/gap.dart';

class LocationPermissionScreen extends StatelessWidget {
  static const route = '/location-permission-screen';
  const LocationPermissionScreen({super.key});

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Image.asset(
                Images.locationPermission,
                height: 400.h,
                width: 400.w,
                fit: BoxFit.cover,
              ),
              H(30),
              Text(
                'Location permission not enabled',textAlign: TextAlign.center,
                style: getTextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff00040D)),
              ),
              H(16),
              Text(
                'Sharing Location permission help us improve your booking and pickup experience',
                style: getTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff00040D)),
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              CommonButton(
                text: 'Allow permission',
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    MasterScreen.route,
                    (route) => false,
                  );
                },
              ),
              H(16),
              CommonButton(
                text: 'Do it manually',
                textStyle: getTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: primaryColor),
                bgcolor: Colors.white,
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    MasterScreen.route,
                    (route) => false,
                  );
                },
              ),
              H(60)
            ])));
  }
}
