
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/images.dart';

class CommonBackButton extends StatelessWidget {final Function()? onPressed;
  const CommonBackButton({
    super.key, this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset(Images.backButton),
      onPressed:onPressed?? () {
        Navigator.pop(context);
      },
    );
  }
}
