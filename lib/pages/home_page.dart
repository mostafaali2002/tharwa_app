import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/cart_page.dart';
import 'package:tharwa_app/pages/favourit_page.dart';
import 'package:tharwa_app/pages/result_search_page.dart';
import 'package:tharwa_app/pages/seller_page.dart';
import 'package:tharwa_app/pages/setting/account_page.dart';
import 'package:tharwa_app/pages/setting/more_page.dart';
import 'package:tharwa_app/widgets/categories.dart';
import 'package:tharwa_app/widgets/list_of_category_image.dart';
import 'package:tharwa_app/widgets/text_form.dart';
import 'package:tharwa_app/widgets/trademark_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myCurrentIndex = 3;
  bool isClick1 = false;
  bool isClick2 = false;
  bool isClick3 = false;
  bool isClick4 = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus &&
              currentFocus.focusedChild != null) {
            FocusManager.instance.primaryFocus!.unfocus();
          }
        },
        child: Scaffold(
          bottomNavigationBar: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
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
                              Get.to(() => const MorePage());
                            },
                            icon: const Icon(Icons.home, size: 30)),
                        label: "الرئيسية"),
                  ]),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: SingleChildScrollView(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
                      GestureDetector(
                        onTap: () {
                          Get.to(() => const CartPage());
                        },
                        child: Container(
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
                  const SizedBox(
                    height: 17,
                  ),
                  const Text("التصنيفات"),
                  const SizedBox(
                    height: 17,
                  ),
                  Categories(
                    ontap1: () {
                      setState(() {
                        isClick2 = false;
                        isClick1 = true;
                        isClick3 = false;
                        isClick4 = false;
                      });
                    },
                    ontap2: () {
                      setState(() {
                        isClick2 = true;
                        isClick1 = false;
                        isClick3 = false;
                        isClick4 = false;
                      });
                    },
                    ontap3: () {
                      setState(() {
                        isClick3 = true;
                        isClick1 = false;
                        isClick2 = false;
                        isClick4 = false;
                      });
                    },
                    ontap4: () {
                      setState(() {
                        isClick4 = true;
                        isClick1 = false;
                        isClick2 = false;
                        isClick3 = false;
                      });
                    },
                    isClick1: isClick1,
                    isClick2: isClick2,
                    isClick3: isClick3,
                    isClick4: isClick4,
                  ),
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
      ),
    );
  }
}
