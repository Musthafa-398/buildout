import 'package:build_out/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

class CommonTextFeild extends StatefulWidget {
  final String? textHead;
  final String? hintText;
  final Color? filledColor;
  final Color? textColor;
  final Color? borderColor;
  final int? maxLine;
  final int? maxLength;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final double? borderRadius;
  final double? contentPadVertical;
  final FocusNode? focusNode;
  final Function()? onTap;
  final Function(String? val)? onSaved;
  final Function(String? val)? onChanged;
  final String? Function(String? val)? validation;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  final TextEditingController? controller;
  final List<TextInputFormatter>? inputFormatters;
  final bool? readOnly;
  final bool?isMandatory;
  final TextStyle?hintStyle;
  const CommonTextFeild(
      {super.key,
      this.onTap,
      this.textHead,
      this.hintText,
      this.suffixIcon,
      this.onSaved,
      this.onChanged,
      this.validation,
      this.keyboardType,
      this.autofillHints,
      this.controller,
      this.filledColor,
      this.prefixIcon,
      this.textColor,
      this.focusNode,
      this.maxLine,
      this.maxLength,
      this.contentPadVertical,
      this.inputFormatters,
      this.borderRadius,
      this.borderColor = colorAFAFB6,
      this.readOnly , this.isMandatory=false, this.hintStyle});

  @override
  State<CommonTextFeild> createState() => _CommonTextFeildState();
}

class _CommonTextFeildState extends State<CommonTextFeild> {
  InputDecoration inputDecoration() {
    return InputDecoration(
      prefixIcon: widget.prefixIcon,
      suffixIcon: widget.suffixIcon,
      border: OutlineInputBorder(
        borderSide: BorderSide(
      width: 1.5,
          color: widget.borderColor ?? colorAFAFB6,
        ),
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
      ),
      contentPadding: EdgeInsets.symmetric(
          vertical: widget.contentPadVertical ?? 16, horizontal: 12),
      filled: true,
      fillColor: widget.filledColor ?? colorFFFFFF,
      hintText: widget.hintText,
      hintStyle:widget.hintStyle?? getTextStyle(
          fontSize: 14, fontWeight: FontWeight.w400, color: colorAFAFB6),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 1.5,
          color: widget.borderColor ?? colorAFAFB6,
        ),
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide:  BorderSide(
          width: 1.5,
          color:widget.borderColor ?? primaryColor.withValues(alpha: .6),
        ),
        borderRadius: BorderRadius.circular(widget.borderRadius ?? 8),
        
      ),
     
    );
  }

  Widget customTextFeild() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.textHead != null) ...[
              RichText(
            text: TextSpan(
                text: widget.textHead!,
                 style: getTextStyle(
                fontSize: 14,
                color: const Color(0xff434343),
                fontWeight: FontWeight.w400),
                children: [
                  if (widget.isMandatory==true)
                    TextSpan(
                        text: '*',
                        style: getTextStyle(
                            color:const Color(0xffD21015),
                            fontSize: 13,
                            fontWeight: FontWeight.w500))
                ]),
          ),
        
          const SizedBox(height: 4),
        ],
        TextFormField(
          readOnly: widget.readOnly ?? false,
          onTapOutside: (event) =>
              FocusManager.instance.primaryFocus?.unfocus(),
          onTap: widget.onTap,
          focusNode: widget.focusNode,
          autofillHints: widget.autofillHints,
          controller: widget.controller,
          validator: widget.validation,
          onChanged: widget.onChanged,
          onSaved: widget.onSaved,
          keyboardType: widget.keyboardType,
          cursorColor: Theme.of(context).colorScheme.primary,
          maxLines: widget.maxLine ?? 1,
          maxLength: widget.maxLength,
          style: getTextStyle(
              color: const Color(0xff00040D),
              fontSize: 14,
              fontWeight: FontWeight.w400),
          inputFormatters: widget.inputFormatters ?? [],
          autocorrect: true,
          decoration: inputDecoration(),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return customTextFeild();
  }
}
