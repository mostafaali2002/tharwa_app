import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/pages/favourit_page.dart';
import 'package:tharwa_app/pages/filter_search_page.dart';
import 'package:tharwa_app/pages/home_page.dart';
import 'package:tharwa_app/pages/setting/account_page.dart';
import 'package:tharwa_app/pages/setting/more_page.dart';
import 'package:tharwa_app/widgets/custom_gride.dart';
import 'package:tharwa_app/widgets/text_form.dart';

import '../constant.dart';

class ResultSearchPage extends StatelessWidget {
  const ResultSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
              selectedItemColor: const Color(0xffD9D9D9),
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
          "نتائج البحث",
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
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const FilterSearchPage());
                      },
                      child: Container(
                        width: 73,
                        height: 64,
                        decoration: BoxDecoration(
                          color: Color(0xffffff),
                          border: Border.all(
                              color: const Color.fromARGB(160, 158, 158, 158)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Icon(
                          FontAwesomeIcons.sliders,
                          color: Color(Style.kPrimaryColorTwo),
                          size: 30,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      width: 250,
                      child: CustomTextFormField(
                        preicon: IconButton(
                            onPressed: () {
                              Get.to(() => const ResultSearchPage());
                            },
                            icon: const Icon(Icons.search)),
                        onChanged: (p0) {},
                        label: "ابحث بالعلامه التجاريه",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 32),
              const CustomGride(
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
