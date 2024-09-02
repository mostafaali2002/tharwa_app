import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/favourit_page.dart';
import 'package:tharwa_app/pages/home_page.dart';
import 'package:tharwa_app/pages/setting/address_delivery_page.dart';
import 'package:tharwa_app/pages/setting/change_info_page.dart';
import 'package:tharwa_app/pages/setting/change_password_page.dart';
import 'package:tharwa_app/pages/setting/more_page.dart';
import 'package:tharwa_app/pages/setting/my_order_page.dart';
import 'package:tharwa_app/widgets/setting_card.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    int myCurrentIndex = 1;

    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
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
                      icon: const Icon(Icons.menu, size: 30)),
                  label: "المزيد",
                ),
                BottomNavigationBarItem(
                  icon: IconButton(
                      onPressed: () {
                        Get.to(() => const AccountPage());
                      },
                      icon: const Icon(Icons.person, size: 30)),
                  label: "حسابي",
                ),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          Get.to(() => const FavPage());
                        },
                        icon: const Icon(Icons.star, size: 30)),
                    label: "المفضلة"),
                BottomNavigationBarItem(
                    icon: IconButton(
                        onPressed: () {
                          Get.to(() => const HomePage());
                        },
                        icon: const Icon(Icons.home, size: 30)),
                    label: "الرئيسية"),
              ]),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "حسابي",
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
      body: Column(
        children: [
          const SizedBox(
            height: 33,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 84,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(80, 158, 158, 158)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "أحمد محمد محمد",
                          style: TextStyle(
                              color: Color(Style.kPrimaryColorTwo),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "emailaddress@email.com",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Card(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 6,
                      child: const Icon(
                        Icons.image,
                        size: 60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
            child: Container(
              height: 380,
              decoration: BoxDecoration(
                border:
                    Border.all(color: const Color.fromARGB(80, 158, 158, 158)),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  children: [
                    SettingCard(
                      icon: Icons.settings,
                      text: "تعديل البيانات الشخصية",
                      ontap: () {
                        Get.to(() => const ChangeInfoPage());
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingCard(
                      icon: FontAwesomeIcons.boxOpen,
                      text: "طلباتي",
                      ontap: () {
                        Get.to(() => const MyOrderPage());
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingCard(
                      icon: FontAwesomeIcons.solidAddressCard,
                      text: "عنوان الشحن",
                      ontap: () {
                        Get.to(() => const AddressPage());
                      },
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingCard(
                      icon: Icons.translate_rounded,
                      text: "اللغة",
                      ontap: () {},
                      additionIcon: Icons.keyboard_arrow_down,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingCard(
                      icon: Icons.language_rounded,
                      text: "البلد",
                      ontap: () {},
                      additionIcon: Icons.keyboard_arrow_down,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingCard(
                      icon: Icons.lock,
                      text: "تغيير كلمة المرور",
                      ontap: () {
                        Get.to(() => const ChangePasswordPage());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
