import 'package:flutter/material.dart';

import '../features/category_select/view/category_select_screen.dart';
import '../features/create_account/create_account_screen.dart';
import '../features/location_permission/location_permission_screen.dart';
import '../features/master_screen/view/master_screen.dart';
import '../features/otp_verify/enter_number_screen.dart';
import '../features/otp_verify/otp_screen.dart';
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
      case OtpScreen.route:
        return MaterialPageRoute(
          builder: (context) => const OtpScreen(),
        );
      case CreateAccountScreen.route:
        return MaterialPageRoute(
          builder: (context) => const CreateAccountScreen(),
        );
      case CategorySelectScreen.route:
        return MaterialPageRoute(
          builder: (context) => const CategorySelectScreen(),
        );
      case LocationPermissionScreen.route:
        return MaterialPageRoute(
          builder: (context) => const LocationPermissionScreen(),
        );
      case MasterScreen.route:
        return MaterialPageRoute(
          builder: (context) => const MasterScreen(),
        );
      default:
        return null;
    }
  }
}
