import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';

class SendCard extends StatelessWidget {
  const SendCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerRight,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
         
          Container(
           constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .5),
            margin: EdgeInsets.only(bottom: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
            decoration: const BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                    bottomLeft: Radius.circular(24))),
            child: Text(
              "Hi! This is a cool new feature. Can I chat with you, the driver?",
              style: getTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xffF7FAFF)),
            ),
          ),
          W(12),
          Container(
            height: 36.h,
            width: 36.w,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage(Images.person), fit: BoxFit.cover)),
          )
        ],
      ),
    );
  }
}
