import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:tharwa_app/pages/cart_page.dart';

import 'package:tharwa_app/pages/code_page.dart';
import 'package:tharwa_app/pages/favourit_page.dart';
import 'package:tharwa_app/pages/forget_password_page.dart';
import 'package:tharwa_app/pages/new_password_page.dart';
import 'package:tharwa_app/pages/onbordding1_page.dart';
import 'package:tharwa_app/pages/onbordding2_page.dart';
import 'package:tharwa_app/pages/onbordding3_page.dart';
import 'package:tharwa_app/pages/seller_page.dart';
import 'package:tharwa_app/pages/setting/account_page.dart';
import 'package:tharwa_app/pages/setting/address_page.dart';
import 'package:tharwa_app/pages/setting/change_info_page.dart';
import 'package:tharwa_app/pages/setting/notification_page.dart';
import 'package:tharwa_app/pages/signin_page.dart';
import 'package:tharwa_app/pages/signup_page.dart';
import 'package:tharwa_app/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
