import 'package:build_out/features/address/view/add_address_screen.dart';
import 'package:build_out/widgets/common_back_button.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/gap.dart';
import 'widgets/address_card.dart';

class AddressScreen extends StatelessWidget {
  static const route = '/address-screen';
  const AddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            // height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                border: const Border(
                    bottom: BorderSide(color: Color(0xffAFAFB6), width: 1)),
                boxShadow: [
                  BoxShadow(
                      blurStyle: BlurStyle.outer,
                      offset: const Offset(0.0, 0.75),
                      blurRadius: 19,
                      spreadRadius: 0,
                      color: primaryColor.withValues(alpha: .25))
                ]),
            child: Column(
              children: [
                H(30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w),
                  child: Row(
                    children: [
                      const CommonBackButton(),
                      const Spacer(),
                      Text('My Address',
                          style: getTextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: primaryColor)),
                      const Spacer(),
                     IconButton(onPressed: (){
Navigator.pushNamed(context, AddAddressScreen.route);

                     }, icon: const Icon(Icons.add_circle_outline_outlined,
                            fill: 1, color: Colors.black, size: 35),)
                    ],
                  ),
                ),
                H(5)
              ],
            ),
          ),
          Expanded(
              child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                H(30),
                Expanded(
                  child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => const AddressCard(),
                      separatorBuilder: (context, index) => H(30),
                      itemCount: 2),
                ),
                H(10),
                const CommonButton(
                  text: 'Set as default address',
                ),
                H(30),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
