import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/home_page.dart';
import 'package:tharwa_app/pages/setting/account_page.dart';
import 'package:tharwa_app/pages/setting/more_page.dart';
import 'package:tharwa_app/widgets/tshirt_item.dart';

class FavPage extends StatelessWidget {
  const FavPage({super.key});

  @override
  Widget build(BuildContext context) {
    int myCurrentIndex = 2;

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
            "المفضلة",
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.5,
                crossAxisSpacing: 20,
                mainAxisSpacing: 16),
            itemCount: 4,
            itemBuilder: (context, index) {
              return const TshirtItem();
            },
          ),
        ));
  }
}
