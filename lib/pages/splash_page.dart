import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/onbordding1_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 2000), () {
      Get.to(() => const BorddingOnePage());
    });
    return Scaffold(
      body: Center(
        child: Image.asset(Style.kAppLogo),
      ),
    );
  }
}
