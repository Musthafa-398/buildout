import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    this.onPressed,
    required this.text,
    this.bgcolor,
    this.size,
    this.borderRadius,
    this.textStyle,
  });

  final void Function()? onPressed;
  final String text;
  final Color? bgcolor;
  final Size? size;
  final double? borderRadius;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        disabledBackgroundColor: primaryColor,
        minimumSize: size ?? Size(double.infinity, 54.h),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
        ),
      ),
      onPressed: onPressed,
      child: Text(text,
          textAlign: TextAlign.center,
          style: textStyle ??
              getTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
    );
  }
}
