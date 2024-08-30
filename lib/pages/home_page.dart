import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/favourit_page.dart';
import 'package:tharwa_app/pages/seller_page.dart';
import 'package:tharwa_app/pages/setting/account_page.dart';
import 'package:tharwa_app/pages/setting/more_page.dart';
import 'package:tharwa_app/widgets/categories.dart';
import 'package:tharwa_app/widgets/list_of_category_image.dart';
import 'package:tharwa_app/widgets/trademark_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myCurrentIndex = 3;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                onTap: (value) {
                  setState(() {
                    myCurrentIndex = value;
                  });
                },
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
                            Get.to(() => const MorePage());
                          },
                          icon: const Icon(Icons.home, size: 40)),
                      label: "الرئيسية"),
                ]),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Image.asset(
                    Style.kAppLogo,
                    width: 65,
                    height: 37,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  children: [
                    Container(
                      width: 73,
                      height: 64,
                      decoration: BoxDecoration(
                        color: const Color(Style.kPrimaryColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                const Text("التصنيفات"),
                const SizedBox(
                  height: 17,
                ),
                const Categories(),
                const SizedBox(
                  height: 32,
                ),
                Image.asset("assets/fashion.png"),
                const SizedBox(
                  height: 24,
                ),
                const ListOfCategoryImage(),
                const SizedBox(
                  height: 29,
                ),
                trademarkList(
                  trademark1: "assets/1.png",
                  trademark2: "assets/2.png",
                  trademark3: "assets/3.png",
                  tradeOntap1: () {},
                  tradeOntap2: () {},
                  tradeOntap3: () {
                    Get.to(() => const SellerPage());
                  },
                ),
                const SizedBox(
                  height: 24,
                ),
                trademarkList(
                  trademark1: "assets/4.png",
                  trademark2: "assets/5.png",
                  trademark3: "assets/6.png",
                  tradeOntap1: () {},
                  tradeOntap2: () {},
                  tradeOntap3: () {},
                ),
                const SizedBox(
                  height: 24,
                ),
                trademarkList(
                  trademark1: "assets/7.png",
                  trademark2: "assets/8.png",
                  trademark3: "assets/9.png",
                  tradeOntap1: () {},
                  tradeOntap2: () {},
                  tradeOntap3: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
