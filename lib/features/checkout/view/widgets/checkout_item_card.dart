
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants/text_styles.dart';
import '../../../../utils/images.dart';
import '../../../../widgets/gap.dart';

class CheckoutItemCard extends StatelessWidget {
  final String image;
  const CheckoutItemCard({
    super.key, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [H(20),
            Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                image,
                  height: 82.h,
                  width: 60.w,
                  fit: BoxFit.cover,
                ),
                W(20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'ACC Concrete Cement',
                        style: getTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff434343)),
                      ),
                      H(8),
                      Text(
                        '₹340.00',
                        style: getTextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xff434343)),
                      ),
                      H(17),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Quantity: 1kg',
                            style: getTextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: const Color(0xff434343)),
                          ),
                          Container(
                            height: 44.h,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color(0xffAFAFB6), width: 1),
                                borderRadius: BorderRadius.circular(4)),
                            child: Row(crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.remove,
                                      color: Colors.black,
                                    )),
                                Text(
                                  '1',
                                  style: getTextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700),
                                ),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                    ))
                              ],
                            ),
                          )
                        ],
                      ),
                      H(19),
                      const Divider(
                        color: Color(0xffAFAFB6),height: 0,thickness: .6,
                      ) , H(6) ,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text('Subtotal:' , style: getTextStyle(fontSize: 14 , fontWeight: FontWeight.w700 ,  color: const Color(0xff434343)),),Text('₹340.00' , style: getTextStyle(fontSize: 14 , fontWeight: FontWeight.w700 ,  color: const Color(0xff434343)),)],)
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
          Align(alignment: Alignment.topRight,
            child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    Images.delete,
                    height: 25.h,
                    width: 25.w,
                    fit: BoxFit.cover,
                  )),
          ),
      ],
    );
  }
}
