import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/cart_page.dart';
import 'package:tharwa_app/widgets/circle_button.dart';
import 'package:tharwa_app/widgets/custom_alert_dialog.dart';
import 'package:tharwa_app/widgets/custom_circle_avatar.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

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
              Center(child: Image.asset("assets/tshirt.png")),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 160),
                child: CustomCircleAvatar(
                  firstCircleColor: Color(Style.kCircleColor),
                  secondCircleColor: Color(Style.kCircleColor),
                  thirdCircleColor: Color(Style.kPrimaryColor),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Card(
                elevation: 30,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleButton(
                            ontap: () {},
                            iconData: Icons.remove,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text(
                            "0",
                            style: TextStyle(fontSize: 15),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          CircleButton(
                            ontap: () {},
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
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          CustomCircleAvatar(
                            firstCircleColor: Color(Style.kCircleColor),
                            secondCircleColor: Color(0xffFF725E),
                            thirdCircleColor: Colors.black,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CircleAvatar(
                            backgroundColor: Colors.orange,
                            radius: 7,
                          ),
                          Spacer(
                            flex: 1,
                          ),
                          Text("متوفر في المخزون")
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
                          Container(
                            height: 42,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(child: Text("XXL")),
                            ),
                          ),
                          Container(
                            height: 42,
                            width: 30,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(child: Text("XL")),
                            ),
                          ),
                          Container(
                            height: 42,
                            width: 30,
                            child: Card(
                              elevation: 4,
                              color: const Color(0xffFBEEDE),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(child: Text("L")),
                            ),
                          ),
                          Container(
                            height: 42,
                            child: Card(
                              elevation: 4,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)),
                              child: const Center(child: Text("M")),
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
                      child: Text(
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
}
