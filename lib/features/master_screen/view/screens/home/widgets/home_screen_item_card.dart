import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/item_details/item_details_screen.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreenItemCard extends StatelessWidget {
  final String title;
  final String image;
  const HomeScreenItemCard({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.pushNamed(context, ItemDetailsScreen.route);
    },
      child: Container(
        height: 150.h,
        width: 127.w,
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: const Color(0xffAFAFB6), width: .6),
            borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: [
            const Spacer(),
            Expanded(
                child: Image.asset(
              image,
              fit: BoxFit.contain,
            )),
            const Spacer(),
            H(5),
            Text(
              title,
              textAlign: TextAlign.center,
              style: getTextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff00040D)),
            ),
            H(6)
          ],
        ),
      ),
    );
  }
}
