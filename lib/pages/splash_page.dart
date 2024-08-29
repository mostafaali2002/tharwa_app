import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(Style.kAppLogo),
      ),
    );
  }
}
