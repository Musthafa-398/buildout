import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_text_feild.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../widgets/common_back_button.dart';
import 'widgets/reciever_card.dart';
import 'widgets/send_card.dart';

class ChatScreen extends StatelessWidget {
  static const route = '/chat-screen';
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const CommonBackButton(),
          centerTitle: true,
          title: Text('Help',
              style: getTextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: primaryColor)),
          actions: [
            PopupMenuButton(
              iconSize: 35,
              iconColor: const Color(0xff00040D),
              color: const Color(0xffF7FAFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              shadowColor: const Color(0xff000000),
              itemBuilder: (context) {
                return [
                  PopupMenuItem(
                      value: 'end_chat',
                      child: Center(
                        child: Text(
                          'End Chat',
                          style: getTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xffD21015)),
                        ),
                      )),
                  PopupMenuItem(
                      value: 'call_us',
                      child: Center(
                        child: Text(
                          'Call Us',
                          style: getTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff434343)),
                        ),
                      )),
                ];
              },
            )
          ],
        ),
        body: Column(children: [
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ListView.builder(
                            itemCount: 10,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  if (index == 0) ...[
                                    H(20),
                                    Text('Today',
                                        style: getTextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w400,
                                            color: const Color(0xff8E8E8E))),
                                    H(20),
                                  ],
                                  if (index % 2 == 0)
                                    const RecieverCard()
                                  else
                                    const SendCard(),
                                ],
                              );
                            },
                          ),
                        ),
                        CommonTextFeild(
                          filledColor: primaryColor.withValues(alpha: .1),
                          hintText: 'Write your message',
                          borderColor: Colors.transparent,
                          hintStyle: getTextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff434343)),
                          suffixIcon: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 8.h, horizontal: 14.w),
                            height: 50.h,
                            width: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(14),
                                color: primaryColor.withValues(alpha: .3)),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              Images.send,
                              height: 30.h,
                              width: 30.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          borderRadius: 10,
                        ),
                        H(30)
                      ])))
        ]));
  }
}
