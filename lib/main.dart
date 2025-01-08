import 'package:build_out/features/master_screen/view/master_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'config/app_routes.dart';
import 'constants/text_styles.dart';
import 'features/otp_verify/enter_number_screen.dart';
import 'utils/providers.dart';

void main() {
  runApp(MultiProvider(providers: providers, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(440, 956),
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Buildout',
          theme: ThemeData(
            appBarTheme: AppBarTheme(
                backgroundColor: Colors.transparent,
                elevation: 0,
                titleSpacing: 6,
                titleTextStyle: getTextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff00040D))),
            scaffoldBackgroundColor: const Color(0xffF7FAFF),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          initialRoute: MasterScreen.route,
          onGenerateRoute: Routes.genericRoute,
        );
      },
    );
  }
}
