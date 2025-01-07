
import 'package:flutter/material.dart';

import '../../../constants/colors.dart';
import '../../../constants/text_styles.dart';
import '../../../widgets/gap.dart';
import '../widgets/stepper_widget.dart';

class StepperSection extends StatelessWidget {
  const StepperSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: primaryColor.withValues(alpha: .1),
          borderRadius: BorderRadius.circular(13)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('How Request for Quotation works ?',
              style: getTextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: const Color(0xff434343),
              )),
          H(24),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StepperWidget(
                number: 1,
                title: 'Select Product',
                description:
                    'You have the option of providing detailed requirements of “Air Grill” , along images.',
              ),
              StepperWidget(
                number: 2,
                title: 'Provide the required quantity',
                description:
                    'You have the option of providing detailed requirements of “Air Grill” , along images.',
              ),
              StepperWidget(
                number: 3,
                title: 'Raise Quotation',
                description:
                    'You have the option of providing detailed requirements.',
              ),
              StepperWidget(
                number: 4,
                title: 'Place your order',
                description: '',
                showDivider: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
