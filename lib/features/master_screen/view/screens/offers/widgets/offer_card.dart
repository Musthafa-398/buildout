import 'package:build_out/features/master_screen/view/screens/offers/offer_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../constants/colors.dart';
import '../../../../../../constants/text_styles.dart';
import '../../../../../../utils/images.dart';
import '../../../../../../widgets/gap.dart';

class OfferCard extends StatelessWidget {
  const OfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      Navigator.pushNamed(context, OfferDetailsScreen.route);
    },
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(21.w, 24.h, 21.w, 27.h),
        decoration: BoxDecoration(
            color: const Color(0xffF7FAFF),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0,1),
                  blurRadius: 18.8,
                  spreadRadius: 0,
                  color: const Color(0xff000000).withValues(alpha: .2))
            ],
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Container(
              height: 145.h,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(19),
                  image: const DecorationImage(
                      image: AssetImage(Images.offer4), fit: BoxFit.cover)),
              alignment: Alignment.topLeft,
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: EdgeInsets.symmetric(horizontal: 17.w, vertical: 9.h),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: const Color(0xffF7FAFF)),
                child: Text(
                  'Seasonal Offer',
                  style: getTextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: primaryColor),
                ),
              ),
            ),
            H(18),
            Text(
              'Invite a friend and both get \$20 off your next purchase.',
              style: getTextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff00040D)),
            )
          ],
        ),
      ),
    );
  }
}
