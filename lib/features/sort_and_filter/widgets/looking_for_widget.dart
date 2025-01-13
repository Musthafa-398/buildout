
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/common_button.dart';
import '../../../widgets/gap.dart';

class LookingForWidget extends StatelessWidget {
  const LookingForWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: primaryColor.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          Text(
            'Looking for something specific?',
            style: getTextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: const Color(0xff434343)),
          ),
          H(12),
          Text(
            'Tell us your requirements and we will call you back shortly',
            textAlign: TextAlign.center,
            style: getTextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: const Color(0xff434343)),
          ),
          H(18),
          CommonButton(
            text: 'Submit Enquiry',
            size: Size(153.w, 30.h),
            borderRadius: 4,
            bgcolor: Colors.transparent,
            textStyle: getTextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: primaryColor),
            borderWidth: 1,
          ),
        ],
      ),
    );
  }
}
