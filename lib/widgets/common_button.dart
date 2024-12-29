import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommonButton extends StatelessWidget {
  const CommonButton({
    super.key,
    this.onPressed,
     this.text,
    this.bgcolor,
    this.size,
    this.borderRadius,
    this.textStyle, this.child, this.borderWidth,
  });

  final void Function()? onPressed;
  final String? text;
  final Color? bgcolor;
  final Size? size;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Widget?child;
  final double?borderWidth;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor:bgcolor?? primaryColor,
        disabledBackgroundColor:bgcolor?? primaryColor,
        minimumSize: size ?? Size(double.infinity, 54.h),
        shape: RoundedRectangleBorder(side:  BorderSide(color: primaryColor , width:borderWidth?? 1.5),
          borderRadius: BorderRadius.circular(borderRadius ?? 8),
          
        ),
      ),
      onPressed: onPressed,
      child:child?? Text(text??'',
          textAlign: TextAlign.center,
          style: textStyle ??
              getTextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Colors.white)),
    );
  }
}
