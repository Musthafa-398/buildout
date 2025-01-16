import 'package:build_out/features/address/view/map_screen.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/common_dropdown.dart';
import 'package:build_out/widgets/common_text_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';
import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/common_back_button.dart';
import '../../../widgets/gap.dart';

class AddAddressScreen extends StatelessWidget {
  static const route = '/add-address-screen';
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CommonBackButton(),
        centerTitle: true,
        title: Text('New Address',
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
          H(25),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 190.h,
                        width: double.infinity,
                        child: FlutterMap(
                          options: const MapOptions(
                            initialCenter: LatLng(12.971599, 77.594566),
                            initialZoom: 14,
                          ),
                          children: [
                            TileLayer(
                              urlTemplate:
                                  'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                              userAgentPackageName: 'com.example.app',
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: CommonTextFeild(
                            hintText: 'Search for area, street name...',contentPadVertical: 0,
                            prefixIcon: IconButton(
                              onPressed: null,
                              icon: SvgPicture.asset(
                                Images.search,
                                height: 20.h,
                                width: 20.w,
                                fit: BoxFit.fill,
                              ),
                            )),
                      ),
                      Positioned(
                      left: 20,bottom: 8,
                          child: Text('Enter Complete address' , style: getTextStyle(fontSize: 18 , fontWeight: FontWeight.w700 , color: const Color(0xffF7FAFF)),))
                    ],
                  ),
                  H(24),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.fromLTRB(12.w, 10.h, 12.w, 16.h),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: primaryColor.withValues(alpha: .1),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Receiver details for this address',
                                      style: getTextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          color: const Color(0xff8E8E8E)),
                                    ),
                                    H(14),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                          Images.call,
                                          height: 15.h,
                                          width: 15.w,
                                          fit: BoxFit.cover,
                                        ),
                                        W(6),
                                        Text(
                                          'Anandeswar M, 123456789',
                                          style: getTextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              color: const Color(0xff434343)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                color: Color(0xff8E8E8E),
                              )
                            ],
                          ),
                        ),
                        H(24),
                        const CommonTextFeild(
                          textHead: 'First Name',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Last Name',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonDropdown(
                          textHead: 'Country / Region',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Street Address',
                          hintText: 'House number & street name',
                          isMandatory: true,
                        ),
                        H(12),
                        const CommonTextFeild(
                          hintText: 'Apartment, Suite, Unit, etc (optional)',
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Town / City',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonDropdown(
                          textHead: 'State',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Pincode',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Phone Number',
                          isMandatory: true,
                        ),
                        H(30),
                        const CommonTextFeild(
                          textHead: 'Email Address',
                          isMandatory: true,
                        ),
                        H(24),
                        Row(
                          children: [
                            // Checkbox(
                            //     shape: RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(3)),
                            //     activeColor: primaryColor,
                            //     value: true,
                            //     onChanged: (value) {}),
                               Container(
                          height: 20.h,
                          width: 20.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: primaryColor),
                              child: const Icon(Icons.check , color: Colors.white  , size: 16),
                        ),
                      W(7),
                            Text(
                              'Set as your default address',
                              style: getTextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xff434343)),
                            )
                          ],
                        ),
                        H(23),
                        CommonButton(
                          text: 'Save Address',
                          onPressed: () {
                            Navigator.pushNamed(context, MapScreen.route);
                          },
                        ),
                        H(30)
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
