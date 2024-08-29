import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/setting_card.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "المزيد",
          style: TextStyle(
              color: Color(Style.kPrimaryColorTwo),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Color(Style.kPrimaryColorTwo),
                  size: 30,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
        child: Column(
          children: [
            SettingCard(
              icon: Icons.notifications,
              text: "الإشعارات",
              ontap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            SettingCard(
              icon: Icons.error,
              text: "من نحن",
              ontap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            SettingCard(
              icon: Icons.lock,
              text: "سياسة الاستخدام والخصوصية",
              ontap: () {},
            ),
            const SizedBox(
              height: 30,
            ),
            SettingCard(
              icon: Icons.logout,
              text: "تسجيل خروج",
              textColor: Colors.red,
              ontap: () {},
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
