import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/text_styles.dart';

class CommonDropdown extends StatelessWidget {
  final String? textHead;
  final String? hintText;
  final String? errorText;
  final Function(dynamic)? onChanged;
  final String? Function(dynamic)? validator;
  final List<DropdownMenuItem<Object?>>? items;
  final bool? isMandatory;
  final dynamic value;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? borderRadius;
  final Color? filColor;
  final Color? textColor;
  final Color? borderColor;
  final double? contentPadVertical;
  const CommonDropdown({
    super.key,
    required this.textHead,
     this.hintText,
    this.errorText,
    this.onChanged,
    this.validator,
    this.items,
    this.isMandatory = false,
    this.value,
    this.suffixIcon,
    this.prefixIcon,
    this.borderRadius,
    this.filColor,
    this.textColor,
    this.borderColor,
    this.contentPadVertical,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (textHead != null) ...[
          RichText(
            text: TextSpan(
                text: textHead!,
                style: getTextStyle(
                    fontSize: 14,
                    color: const Color(0xff434343),
                    fontWeight: FontWeight.w400),
                children: [
                  if (isMandatory == true)
                    TextSpan(
                        text: '*',
                        style: getTextStyle(
                            color: const Color(0xffD21015),
                            fontSize: 13,
                            fontWeight: FontWeight.w500))
                ]),
          ),
          const SizedBox(height: 4),
        ],
        DropdownButtonFormField(
          style: getTextStyle(
              color: const Color(0xff00040D),
              fontSize: 14,
              fontWeight: FontWeight.w400),
          validator: validator,
          decoration: InputDecoration(
            prefixIcon: prefixIcon,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: borderColor ?? colorAFAFB6,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
            contentPadding: EdgeInsets.symmetric(
                vertical: contentPadVertical ?? 16, horizontal: 12),
            filled: true,
            fillColor: filColor ?? colorFFFFFF,
            hintText: hintText,
            hintStyle: getTextStyle(
                fontSize: 16, fontWeight: FontWeight.w400, color: colorAFAFB6),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: borderColor ?? colorAFAFB6,
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 1.5,
                color: primaryColor.withValues(alpha: .6),
              ),
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
          ),
          items: items,
          onChanged: onChanged,
          value: value,
        ),
      ],
    );
  }
}
