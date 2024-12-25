import 'package:build_out/utils/images.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const route = '/splash-screen';
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Image.asset(
      Images.splash,
      fit: BoxFit.fill,
    )));
  }
}
