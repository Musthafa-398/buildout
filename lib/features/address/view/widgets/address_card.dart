import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';
import '../../../../utils/images.dart';
import '../../../../widgets/common_button.dart';
import '../../../../widgets/gap.dart';

class AddressCard extends StatelessWidget {
  const AddressCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Abhinash Sharma',
                    style: getTextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff00040D)),
                  ),
                  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    child: const Icon(
                      Icons.check,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              H(3),
              Text(
                '+123-456789',
                style: getTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8E8E8E)),
              ),
              H(3),
              Text(
                '2972 Westheimer Rd. Santa Ana,\nIllinois 85486',
                style: getTextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff8E8E8E)),
              ),
              H(7),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CommonButton(
                    size: Size(151.w, 29.h),
                    text: 'Edit Address',
                    textStyle: getTextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: primaryColor,
                    ),
                    bgcolor: Colors.white,
                  ),
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (ctx) {
                          return Dialog(
                              child: Container(
                            padding: const EdgeInsets.all(3),
                            width: 312.w,
                            decoration: BoxDecoration(
                                color: const Color(0xffF7FAFF),
                                borderRadius: BorderRadius.circular(12)),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: IconButton(
                                      onPressed: () {
                                        Navigator.pop(ctx);
                                      },
                                      icon: const Icon(
                                        Icons.close,
                                        size: 30,
                                        color: Color(0xff434343),
                                      )),
                                ),
                                Text(
                                  'Do you want to delete\nthe address?',
                                  textAlign: TextAlign.center,
                                  style: getTextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff434343)),
                                ),
                                H(14),
                                CommonButton(
                                  size: Size(180.w, 41.h),
                                  bgcolor: const Color(0xffD21015),
                                  borderRadius: 20,
                                  text: 'Delete',
                                  textStyle: getTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xffF7FAFF)),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                H(6),
                                CommonButton(
                                  size: Size(180.w, 41.h),
                                  bgcolor: Colors.white,
                                  borderRadius: 20,
                                  text: 'Cancel',
                                  textStyle: getTextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff434343)),
                                  onPressed: () => Navigator.pop(context),
                                ),
                                H(30)
                              ],
                            ),
                          ));
                        },
                      );
                    },
                    child: SvgPicture.asset(
                      Images.delete,
                      height: 25.h,
                      width: 25.w,
                      colorFilter: const ColorFilter.mode(
                          Color(0xff434343), BlendMode.srcIn),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
