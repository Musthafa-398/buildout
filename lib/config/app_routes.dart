import 'package:flutter/material.dart';

import '../features/otp_verify/enter_number_screen.dart';
import '../features/splash/splash_screen.dart';

class Routes {
  static Route<dynamic>? genericRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.route:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      case EnterNumberScreen.route:
        return MaterialPageRoute(
          builder: (context) => const EnterNumberScreen(),
        );

      default:
        return null;
    }
  }
}
