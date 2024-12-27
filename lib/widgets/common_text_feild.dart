import 'package:build_out/constants/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/colors.dart';

class CommonTextFeild extends StatefulWidget {
  final String? textHead;
  final String? hintText;
  final Color? filColor;
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
      this.filColor,
      this.prefixIcon,
      this.textColor,
      this.focusNode,
      this.maxLine,
      this.maxLength,
      this.contentPadVertical,
      this.inputFormatters,
      this.borderRadius,
      this.borderColor = colorAFAFB6,
      this.readOnly});

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
      fillColor: widget.filColor ?? colorFFFFFF,
      hintText: widget.hintText,
      hintStyle: getTextStyle(
          fontSize: 16, fontWeight: FontWeight.w400, color: colorAFAFB6),
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
          color: primaryColor.withValues(alpha: .6),
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
          Text(
            widget.textHead!,
            style: getTextStyle(
                fontSize: 14,
                color: const Color(0xff434343),
                fontWeight: FontWeight.w400),
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

// class CustomDropDownFormField extends StatelessWidget {
//   final String? textHead;
//   final String hintText;
//   final String? errorText;
//   final Function(dynamic)? onChanged;
//   final String? Function(dynamic)? validator;
//   final List<DropdownMenuItem<Object?>>? items;
//   final bool? isMandatory;
//   final dynamic value;
//   final Widget? suffixIcon;
//   final Widget? prefixIcon;
//   final double? borderRadius;
//   final Function()? sufixfn;
//   final Function()? prefixfn;
//   final Color? filColor;
//   final Color? textColor;
//   final Color? borderColor;
//   final double? contentPadVertical;
//   const CustomDropDownFormField({
//     super.key,
//     required this.textHead,
//     required this.hintText,
//     this.errorText,
//     this.onChanged,
//     this.validator,
//     this.items,
//     this.isMandatory = false,
//     this.value,
//     this.suffixIcon,
//     this.prefixIcon,
//     this.borderRadius,
//     this.sufixfn,
//     this.prefixfn,
//     this.filColor,
//     this.textColor,
//     this.borderColor = colorAFAFB6,
//     this.contentPadVertical,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (textHead != null)
//           Text(
//             textHead!,
//             style: ts12c5A5A60w4,
//           ),
//         if (textHead != null) const SizedBox(height: 4),
//         DropdownButtonFormField(
//           style: TextStyle(
//             color: PColors.black,
//             fontSize: 16,
//             fontFamily: PFonts.inter,
//             fontWeight: FontWeight.w600,
//             letterSpacing: 0.30,
//           ),
//           validator: validator,
//           decoration: InputDecoration(
//             prefixIcon: prefixIcon != null
//                 ? GestureDetector(
//                     onTap: prefixfn!,
//                     child: prefixIcon!,
//                   )
//                 : null,
//             suffixIcon: suffixIcon != null
//                 ? GestureDetector(
//                     onTap: sufixfn!,
//                     child: suffixIcon!,
//                   )
//                 : null,
//             border: OutlineInputBorder(
//               borderSide: BorderSide(
//                 width: 3,
//                 color: borderColor ?? color6BAC1F,
//               ),
//               borderRadius: BorderRadius.circular(borderRadius ?? 8),
//             ),
//             contentPadding: EdgeInsets.symmetric(
//                 vertical: contentPadVertical ?? 16, horizontal: 12),
//             filled: true,
//             fillColor: filColor ?? colorFFFFFF,
//             counterText: '',
//             hintText: hintText,
//             hintStyle: PTextStyles.titleSmall,
//             enabledBorder: OutlineInputBorder(
//               borderSide: BorderSide(
//                 width: 1,
//                 color: borderColor ?? color6BAC1F,
//               ),
//               borderRadius: BorderRadius.circular(borderRadius ?? 8),
//             ),
//             focusedBorder: OutlineInputBorder(
//               borderSide: const BorderSide(
//                 width: 3,
//                 color: color6BAC1F,
//               ),
//               borderRadius: BorderRadius.circular(borderRadius ?? 8),
//             ),
//             errorBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Colors.red, width: 1),
//               borderRadius: BorderRadius.circular(borderRadius ?? 8),
//             ),
//             focusedErrorBorder: OutlineInputBorder(
//               borderSide: const BorderSide(color: Colors.red, width: 1),
//               borderRadius: BorderRadius.circular(borderRadius ?? 8),
//             ),
//           ),
//           items: items,
//           onChanged: onChanged,
//           value: value,
//         ),
//       ],
//     );
//   }

//   OutlineInputBorder _border() {
//     return OutlineInputBorder(
//         borderRadius: BorderRadius.circular(3),
//         borderSide: const BorderSide(color: Colors.transparent));
//   }
// }
