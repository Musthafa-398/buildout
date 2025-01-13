import 'package:build_out/features/help/chat_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/gap.dart';

class TicketCard extends StatelessWidget {
  final String status;
  const TicketCard({super.key, required this.status});

  @override
  Widget build(BuildContext context) {
    bool isActive = status == 'Active';
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ChatScreen.route);
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(9),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(1, 2),
                  blurRadius: 10,
                  spreadRadius: 0,
                  color: Colors.black.withValues(alpha: .15))
            ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '#TK-00001',
                    style: getTextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff00040D)),
                  ),
                  H(6),
                  Text(
                    'Raised on : 20th November 2024',
                    style: getTextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff00040D)),
                  ),
                  H(6),
                  Text('Category : Ticket Related',
                      style: getTextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff8E8E8E)))
                ],
              ),
            ),
            Container(
              height: 29.h,
              width: 76.w,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: isActive
                          ? const Color(0xff449D00)
                          : const Color(0xffD21015),
                      width: 1),
                  borderRadius: BorderRadius.circular(20)),
              alignment: Alignment.center,
              child: Text(
                status,
                style: getTextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: isActive
                        ? const Color(0xff449D00)
                        : const Color(0xffD21015)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
