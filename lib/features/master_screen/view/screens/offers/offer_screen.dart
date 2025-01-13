import 'package:build_out/features/master_screen/view/screens/offers/widgets/offer_card.dart';
import 'package:build_out/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/text_styles.dart';
import '../../../../../widgets/common_back_button.dart';
import '../../../../../widgets/gap.dart';
import '../../../view_model/master_view_model.dart';

class OfferScreen extends StatefulWidget {
  static const route = '/offer-screen';
  const OfferScreen({super.key});

  @override
  State<OfferScreen> createState() => _OfferScreenState();
}

class _OfferScreenState extends State<OfferScreen> {
  int selectedIndex = 0;
  @override
                      
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading:  CommonBackButton(onPressed: () {
              context.read<MasterViewModel>().selectedIndex = 0;
        },),
        centerTitle: true,
        title: Text('Offers',
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
                  child: SingleChildScrollView(
                    child: Column(children: [
                      H(30),
                      Stack(
                        // alignment: Alignment.bottomCenter,
                        children: [
                          SizedBox(
                            height: 145.h,
                            child: PageView.builder(
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 145.h,
                                    padding: EdgeInsets.only(
                                        bottom: 4.h, right: 65.w),
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color:
                                            primaryColor.withValues(alpha: .3),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                              offset: const Offset(1, 1),
                                              blurRadius: 10.4,
                                              spreadRadius: 0,
                                              color: const Color(0xff000000)
                                                  .withValues(alpha: .15))
                                        ]),
                                    alignment: Alignment.bottomRight,
                                    child: SvgPicture.asset(
                                      Images.offer3,
                                      height: 89.h,
                                      width: 89.w,
                                      fit: BoxFit.cover,
                                    ),
                                  );
                                },
                                onPageChanged: (value) => setState(() {
                                      selectedIndex = value;
                                    })),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    'Get 10% off on purchases over ₹5000',
                                    style: getTextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w400,
                                        color: const Color(0xff00040D)),
                                  ),
                                ),
                              ),
                              H(26),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: List.generate(
                                    3,
                                    (index) => Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 3.w),
                                      height: 8.h,
                                      width: 8.w,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: selectedIndex == index
                                              ? const Color(0xff434343)
                                              : const Color(0xff8E8E8E)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      H(30),
                      ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) => const OfferCard(),
                          separatorBuilder: (context, index) => H(30),
                          itemCount: 2)
                    ]),
                  )))
        ],
      ),
    );
  }
}
