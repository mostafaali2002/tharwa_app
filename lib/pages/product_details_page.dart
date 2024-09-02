import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/cart_page.dart';
import 'package:tharwa_app/widgets/circle_button.dart';
import 'package:tharwa_app/widgets/custom_alert_dialog.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key});

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  int count = 0;
  bool isClicked1 = false;
  bool isClicked2 = false;
  bool isClicked3 = true;
  bool isClicked4 = false;
  int currentPage = 0;
  bool isClickedColor1 = false;
  bool isClickedColor2 = false;
  bool isClickedColor3 = true;
  bool isClickedColor4 = false;
  List<String> imgList = [
    "assets/tshirt.png",
    "assets/tshirt.png",
    "assets/tshirt.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "تفاصيل المنتج",
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              CarouselSlider(
                  items: imgList
                      .map(
                        (e) => Center(
                          child: Image.asset(e),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                    initialPage: 0,
                    onPageChanged: (index, _) {
                      setState(() {
                        currentPage = index;
                      });
                    },
                  )),
              const SizedBox(
                height: 20,
              ),
              buildCursosulIndecator(),
              const SizedBox(
                height: 32,
              ),
              Container(
                decoration: const BoxDecoration(
                    color: Color.fromARGB(164, 255, 255, 255),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleButton(
                            ontap: () {
                              setState(() {
                                if (count == 0) {
                                  count = 0;
                                } else {
                                  count--;
                                }
                              });
                            },
                            iconData: Icons.remove,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "$count",
                            style: const TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CircleButton(
                            ontap: () {
                              setState(() {
                                count++;
                              });
                            },
                            iconData: Icons.add,
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Text(
                            "بيزك تيشرت ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "من ماركة : ماكس",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClickedColor4 = false;
                                isClickedColor3 = false;
                                isClickedColor2 = false;
                                isClickedColor1 = true;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: isClickedColor1
                                  ? const Color(0xffFBEEDE)
                                  : Colors.white,
                              child: const CircleAvatar(
                                backgroundColor: Color(Style.kCircleColor),
                                radius: 7,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClickedColor4 = false;
                                isClickedColor3 = false;
                                isClickedColor2 = true;
                                isClickedColor1 = false;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: isClickedColor2
                                  ? const Color(0xffFBEEDE)
                                  : Colors.white,
                              child: const CircleAvatar(
                                backgroundColor: Color(0xffFF725E),
                                radius: 7,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClickedColor4 = false;
                                isClickedColor3 = true;
                                isClickedColor2 = false;
                                isClickedColor1 = false;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: isClickedColor3
                                  ? const Color(0xffFBEEDE)
                                  : Colors.white,
                              child: const CircleAvatar(
                                backgroundColor: Colors.black,
                                radius: 7,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClickedColor4 = true;
                                isClickedColor3 = false;
                                isClickedColor2 = false;
                                isClickedColor1 = false;
                              });
                            },
                            child: CircleAvatar(
                              radius: 15,
                              backgroundColor: isClickedColor4
                                  ? const Color(0xffFBEEDE)
                                  : Colors.white,
                              child: const CircleAvatar(
                                backgroundColor: Colors.orange,
                                radius: 7,
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Text("متوفر في المخزون")
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "المقاسات",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClicked1 = true;
                                isClicked2 = false;
                                isClicked3 = false;
                                isClicked4 = false;
                              });
                            },
                            child: Container(
                              height: 42,
                              child: Card(
                                color: isClicked1
                                    ? const Color(0xffFBEEDE)
                                    : Colors.white,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(child: Text("XXL")),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClicked1 = false;
                                isClicked2 = true;
                                isClicked3 = false;
                                isClicked4 = false;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 30,
                              child: Card(
                                elevation: 4,
                                color: isClicked2
                                    ? const Color(0xffFBEEDE)
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(child: Text("XL")),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClicked1 = false;
                                isClicked2 = false;
                                isClicked3 = true;
                                isClicked4 = false;
                              });
                            },
                            child: Container(
                              height: 42,
                              width: 30,
                              child: Card(
                                elevation: 4,
                                color: isClicked3
                                    ? const Color(0xffFBEEDE)
                                    : Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(child: Text("L")),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isClicked1 = false;
                                isClicked2 = false;
                                isClicked3 = false;
                                isClicked4 = true;
                              });
                            },
                            child: Container(
                              height: 42,
                              child: Card(
                                color: isClicked4
                                    ? const Color(0xffFBEEDE)
                                    : Colors.white,
                                elevation: 4,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: const Center(child: Text("M")),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "وصف المنتج",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 13,
                    ),
                    Container(
                      width: 317,
                      child: const Text(
                          "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبورأنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم "),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) => CustomAlertDialog(
                                  messege: "تم إضافة العنصر للسلة",
                                  ontap: () {
                                    Get.to(() => const CartPage());
                                  },
                                ),
                              );
                            },
                            child: Container(
                              width: 150,
                              height: 42,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color(Style.kPrimaryColor)),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "أضف للسلة",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Icon(
                                    Icons.shopping_cart,
                                    color: Colors.white,
                                    size: 20,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          const Text(
                            "250 L.E.",
                            style: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  buildCursosulIndecator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < imgList.length; i++)
          Container(
            margin: const EdgeInsets.all(5),
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                color: i == currentPage
                    ? const Color(Style.kPrimaryColor)
                    : Colors.grey,
                shape: BoxShape.circle),
          ),
      ],
    );
  }
}
