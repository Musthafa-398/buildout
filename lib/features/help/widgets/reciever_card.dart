import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/text_styles.dart';

class RecieverCard extends StatelessWidget {
  const RecieverCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(alignment: Alignment.centerLeft,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width * .6),
        margin: EdgeInsets.only(bottom: 20.h),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 18.h),
        decoration: const BoxDecoration(
            color: Color(0xff8E8E8E),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24))),
        child: Text(
          "Absolutely! John here, driving the 3:15 PM route to City Center. What's on your mind?",
          style: getTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: const Color(0xffF7FAFF)),
        ),
      ),
    );
  }
}
