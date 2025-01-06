import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/features/master_screen/view_model/master_view_model.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../../../address/view/address_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              SvgPicture.asset(Images.profileBG),
              Column(
                children: [
                  H(50),
                  Row(
                    children: [
                      W(8),
                      IconButton(
                        icon: SvgPicture.asset(
                          Images.backButton,
                          colorFilter: const ColorFilter.mode(
                              Color(0xffF7FAFF), BlendMode.srcIn),
                        ),
                        onPressed: () {
                          context.read<MasterViewModel>().selectedIndex = 0;
                        },
                      ),
                      W(2),
                      Text(
                        'Profile',
                        style: getTextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: const Color(0xffF7FAFF)),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 9.w, vertical: 5.5.h),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: const Color(0xffF7FAFF)
                                  .withValues(alpha: .4)),
                          child: Text(
                            'Edit Profile',
                            style: getTextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xffF7FAFF)),
                          ),
                        ),
                      ),
                      W(8)
                    ],
                  ),
                  H(20),
                  Container(
                    height: 95.h,
                    width: 95,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffF7FAFF)),
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      Images.profilePic,
                      height: 70.h,
                      width: 70.w,
                      fit: BoxFit.cover,
                    ),
                  ),
                  H(12),
                  Text(
                    'Abhinash Sharma',
                    style: getTextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffF7FAFF)),
                  ),
                  Text('+123-456789',
                      style: getTextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffF7FAFF))),
                  Text('You are our customer since 2021',
                      style: getTextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffF7FAFF))),
                ],
              )
            ],
          ),
          H(38),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                _profileTile(icon: Images.contact, title: 'My Address' , onTap: () {
                  Navigator.pushNamed(context, AddressScreen.route);
                },),
                H(16),
                _profileTile(icon: Images.bag, title: 'Cart'),
                H(16),
                _profileTile(icon: Images.order, title: 'My Orders'),
                H(16),
                _profileTile(
                    icon: Images.scheme,
                    title: 'Scheme & Offers',
                    showArrow: false),
                H(16),
                _profileTile(
                  icon: Images.logout,
                  title: 'Logout',
                  showArrow: false,
                  textStyle: getTextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffD21015)),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _profileTile(
      {required String icon,
      required String title,
      bool showArrow = true,
      TextStyle? textStyle , Function()? onTap}) {
    return InkWell(onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: primaryColor.withValues(alpha: .1)),
        child: Row(
          children: [
            SvgPicture.asset(
              icon,
              height: 30.h,
              width: 30.w,
              fit: BoxFit.cover,
            ),
            W(19),
            Text(
              title,
              style: textStyle ??
                  getTextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xff434343)),
            ),
            const Spacer(),
            if (showArrow)
              const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 24,
                color: Color(0xff8E8E8E),
              )
          ],
        ),
      ),
    );
  }
}
