import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/favourit_page.dart';
import 'package:tharwa_app/pages/home_page.dart';
import 'package:tharwa_app/pages/setting/about_page.dart';
import 'package:tharwa_app/pages/setting/account_page.dart';
import 'package:tharwa_app/pages/setting/notification_page.dart';
import 'package:tharwa_app/pages/setting/privacy_policy_page.dart';
import 'package:tharwa_app/pages/signin_page.dart';
import 'package:tharwa_app/widgets/setting_card.dart';

class MorePage extends StatelessWidget {
  const MorePage({super.key});

  @override
  Widget build(BuildContext context) {
    int myCurrentIndex = 0;

    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 25,
                offset: const Offset(0, 5)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BottomNavigationBar(
              backgroundColor: Colors.white,
              unselectedItemColor: const Color(0xffD9D9D9),
              selectedItemColor: const Color(Style.kPrimaryColorTwo),
              currentIndex: myCurrentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Get.to(() => const MorePage());
                      },
                      icon: const Icon(Icons.menu, size: 40)),
                  label: "المزيد",
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Get.to(() => const AccountPage());
                      },
                      icon: const Icon(Icons.person, size: 40)),
                  label: "حسابي",
                ),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          Get.to(() => const FavPage());
                        },
                        icon: const Icon(Icons.star, size: 40)),
                    label: "المفضلة"),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          Get.to(() => const HomePage());
                        },
                        icon: const Icon(Icons.home, size: 40)),
                    label: "الرئيسية"),
              ]),
        ),
      ),
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
              ontap: () {
                Get.to(() => const NotificationPage());
              },
            ),
            const SizedBox(
              height: 30,
            ),
            SettingCard(
              icon: Icons.error,
              text: "من نحن",
              ontap: () {
                Get.to(() => const AboutPage());
              },
            ),
            const SizedBox(
              height: 30,
            ),
            SettingCard(
              icon: Icons.lock,
              text: "سياسة الاستخدام والخصوصية",
              ontap: () {
                Get.to(() => const PrivacyPolicyPage());
              },
            ),
            const SizedBox(
              height: 30,
            ),
            SettingCard(
              icon: Icons.logout,
              text: "تسجيل خروج",
              textColor: Colors.red,
              ontap: () {
                Get.to(() => const SignInPage());
              },
              iconColor: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
