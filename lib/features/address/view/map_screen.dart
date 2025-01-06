import 'package:build_out/constants/colors.dart';
import 'package:build_out/constants/text_styles.dart';
import 'package:build_out/utils/images.dart';
import 'package:build_out/widgets/common_button.dart';
import 'package:build_out/widgets/gap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'package:latlong2/latlong.dart';
import '../../../widgets/common_back_button.dart';
import '../../../widgets/common_text_feild.dart';

class MapScreen extends StatelessWidget {
  static const route = '/map-screen';
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const CommonBackButton(),
        title: const Text('Confirm delivery location'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                FlutterMap(
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
                    MarkerLayer(markers: [
                      Marker(
                          height: 84.h,
                          width: 84.w,
                          point: LatLng(12.971599, 77.594566),
                          child: SvgPicture.asset(
                            Images.marker,
                            fit: BoxFit.fill,
                          ))
                    ])
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CommonTextFeild(
                      hintText: 'Search for area, street name...',
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
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 24.h),
            color: const Color(0xffF7FAFF),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'DELIVERING YOUR ORDER TO',
                  style: getTextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: primaryColor),
                ),
                H(24),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Images.marker,
                      height: 35.h,
                      width: 35.w,
                      fit: BoxFit.cover,
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Hustlehub Tech Park Building',
                                  style: getTextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w700,
                                      color: const Color(0xff434343)),
                                ),
                              ),
                              Text(
                                'CHANGE',
                                style: getTextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: primaryColor),
                              )
                            ],
                          ),
                          H(6),
                          Text(
                            'Sector 2, HSR Layout, Bengaluru, Karnataka',
                            style: getTextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xff434343)),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                H(24),
                const CommonButton(
                  text: 'Add more address details',
                ),
                H(25)
              ],
            ),
          )
        ],
      ),
    );
  }
}
