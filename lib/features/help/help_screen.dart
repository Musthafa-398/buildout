import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants/colors.dart';
import '../../constants/text_styles.dart';
import '../../widgets/common_back_button.dart';
import 'widgets/ticket_card.dart';

class HelpScreen extends StatefulWidget {
  static const route = '/help-screen';
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  String selectedTitle = 'Active';
  @override
  Widget build(BuildContext context) {
    List itemList = [
      'General',
      'Cancellation Related',
      'Payment Related',
      'Refund Related',
      'Ticket Related'
    ];
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
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                        //
                        H(18),
                        Row(
                          children: [
                            _selectableCard('Active'),
                            W(12),
                            _selectableCard('Closed'),
                          ],
                        ),
                        H(30),

                        ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return TicketCard(status: selectedTitle);
                            },
                            separatorBuilder: (context, index) => H(18),
                            itemCount: 2),

                        //
                        H(30),
                        Text(
                          'Create Ticket',
                          style: getTextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff434343)),
                        ),
                        H(18),
                        ListView.separated(
                            physics: const NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemBuilder: (context, index) {
                              return _helpTile(title: itemList[index]);
                            },
                            separatorBuilder: (context, index) => H(18),
                            itemCount: itemList.length)
                      ])))
        ],
      ),
    );
  }

  Widget _selectableCard(String title) {
    bool isSelected = selectedTitle == title;
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          selectedTitle = title;
        });
      },
      child: Container(
        width: 104.w,
        padding: EdgeInsets.symmetric(vertical: 12.h),
        decoration: BoxDecoration(
            color: isSelected ? primaryColor : const Color(0xffF7FAFF),
            borderRadius: BorderRadius.circular(26),
            border: Border.all(
                color: isSelected ? primaryColor : const Color(0xffAFAFB6))),
        alignment: Alignment.center,
        child: Text(
          title,
          style: getTextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w700,
              color: isSelected
                  ? const Color(0xffF7FAFF)
                  : const Color(0xffAFAFB6)),
        ),
      ),
    );
  }

  Widget _helpTile({required String title, Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: primaryColor.withValues(alpha: .1)),
        child: Row(
          children: [
            W(14),
            Text(
              title,
              style: getTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff434343)),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_rounded,
              size: 24,
              color: Color(0xff8E8E8E),
            ),
            W(4)
          ],
        ),
      ),
    );
  }
}
