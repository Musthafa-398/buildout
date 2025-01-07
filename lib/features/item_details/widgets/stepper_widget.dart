
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/gap.dart';
import 'dotted_vertical_line.dart';

class StepperWidget extends StatelessWidget {
  final int number;
  final String title;
  final String description;
  final bool? showDivider;
  const StepperWidget(
      {super.key,
      required this.number,
      required this.title,
      required this.description,
      this.showDivider = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              height: 40.h,
              width: 40.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: primaryColor.withValues(alpha: .1),
                  border: Border.all(color: primaryColor, width: .5),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 18.8,
                        spreadRadius: 0,
                        color: const Color(0xff000000).withValues(alpha: .2),
                        blurStyle: BlurStyle.outer)
                  ]),
              alignment: Alignment.center,
              child: Text(
                '$number',
                style: getTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xff000000)),
              ),
            ),if(showDivider==true)
            const DottedVerticalLine()
          ],
        ),
        W(18),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: getTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff434343)),
              ),
              Text(
                description,maxLines: 2,overflow: TextOverflow.ellipsis,
                style: getTextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8E8E8E)),
              )
            ],
          ),
        )
      ],
    );
  }
}
