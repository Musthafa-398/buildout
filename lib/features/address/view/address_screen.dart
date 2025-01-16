import 'package:build_out/features/address/view/add_address_screen.dart';
import 'package:build_out/utils/constants.dart';
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
      appBar: AppBar(leadingWidth: leadingWidth,
        backgroundColor: Colors.white,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text('My Address',
            style: getTextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: primaryColor)),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, AddAddressScreen.route);
            },
            icon: const Icon(Icons.add_circle_outline_outlined,
                fill: 1, color: Colors.black, size: 35),
          ) , W(8)
        ],
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
