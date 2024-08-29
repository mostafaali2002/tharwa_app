import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/setting_card.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                onPressed: () {},
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "أحمد محمد محمد",
                          style: TextStyle(
                              color: Color(Style.kPrimaryColorTwo),
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
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
                      child: Icon(
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
                      ontap: () {},
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingCard(
                      icon: FontAwesomeIcons.boxOpen,
                      text: "طلباتي",
                      ontap: () {},
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    SettingCard(
                      icon: FontAwesomeIcons.solidAddressCard,
                      text: "عنوان الشحن",
                      ontap: () {},
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
                      ontap: () {},
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
