import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../widgets/common_back_button.dart';

class ChatScreen extends StatelessWidget {
  static const route ='/chat-screen';
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text('Help',
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
                      children: [])) )]));
  }
}