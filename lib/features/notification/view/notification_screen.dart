import 'package:build_out/features/notification/model/notification_model.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/common_back_button.dart';
import 'widgets/notification_card.dart';

class NotificationScreen extends StatelessWidget {
  static const route = '/notification-screen';
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<NotificationModel> notiList = [
      NotificationModel(
          icon: Images.order2,
          title: 'Order confirmed',
          body: 'Your Order Has Been Confirmed!',
          time: '10 m ago'),
      NotificationModel(
          icon: Images.order2,
          title: 'Order accepted',
          body:
              'We’re excited to let you know that your order  has been successfully accepted.',
          time: '20 m ago'),
      NotificationModel(
          icon: Images.orderCancel,
          title: 'Order Canceled',
          body: 'Your Order Has Been Canceled!',
          time: '4days ago'),
      NotificationModel(
          icon: Images.delivery,
          title: 'Order Delivered',
          body: 'Your Order Has Been delivered!',
          time: '16/08/2023'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text('Notifications',
            style: getTextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: primaryColor)),
      ),
      body: Column(
        children: [
          Container(
            height: 10.h,
            decoration: BoxDecoration(
                color: Colors.white,
                border: const Border(
                    bottom: BorderSide(color: Color(0xffAFAFB6), width: 1)),
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(0, 1),
                      blurRadius: 19,
                      spreadRadius: 0,
                      color: primaryColor.withValues(alpha: .25))
                ]),
          ),
          Expanded(
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        H(24),
                        ListView.builder(
                          itemCount: notiList.length,
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) {
                            return NotificationCard(
                              notificationModel: notiList[index],
                            );
                          },
                        )
                      ])))
        ],
      ),
    );
  }
}
