import 'package:build_out/constants/colors.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DottedVerticalLine extends StatelessWidget {
  const DottedVerticalLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  DottedLine(
        direction: Axis.vertical,
        lineLength: 60.h,
        lineThickness: .5,
        dashLength: 4.0,
        dashColor: primaryColor,
        dashGapLength: 4.0,
        dashGapColor: Colors.transparent,
      );
  }
}
