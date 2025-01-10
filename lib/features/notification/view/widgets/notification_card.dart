
import 'package:build_out/features/notification/model/notification_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/colors.dart';
import '../../../../constants/text_styles.dart';
import '../../../../widgets/gap.dart';

class NotificationCard extends StatelessWidget {
  final NotificationModel notificationModel;
  const NotificationCard({
    super.key, required this.notificationModel
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        H(24),
        Row(
          children: [
            Container(
              height: 48.h,
              width: 48.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: primaryColor.withValues(alpha: .1),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 18.8,
                      spreadRadius: 0,
                      blurStyle: BlurStyle.outer,
                      color: const Color(0xff000000).withValues(alpha: .2))
                ],
              ),
              alignment: Alignment.center,
              child: SvgPicture.asset(
              notificationModel.icon,
                height: 20.h,
                width: 20.w,
                fit: BoxFit.cover,
              ),
            ),
            W(14),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                    notificationModel.title,
                      style: getTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color:notificationModel.title=='Order Canceled'?Color(0xffD21015): Color(0xff00040D)),
                    ),
                    Text(
                    notificationModel.time,
                      style: getTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff8E8E8E)),
                    )
                  ],
                ),
                H(6),
                Text(
               notificationModel.body,
                  style: getTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff434343)),
                )
              ],
            ))
          ],
        ),
        H(24)
      ],
    );
  }
}
