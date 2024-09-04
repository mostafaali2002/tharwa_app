import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/custom_alert_dialog.dart';

class MyPastOrderPage extends StatelessWidget {
  const MyPastOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "طلباتي",
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
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    height: 32,
                    width: 66,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(Style.kPrimaryColor)),
                    child: const Center(
                        child: Text(
                      "السابقة",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 32,
                      width: 66,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFBEEDE)),
                      child: const Center(
                          child: Text(
                        "الحالي",
                        style: TextStyle(color: Colors.grey),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  const Text(
                    "تصفح وتتبع طلباتك",
                    style: TextStyle(
                        color: Color(Style.kPrimaryColorTwo), fontSize: 16),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 115,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(139, 158, 158, 158))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => CustomAlertDialog(
                              messege: "تم الغاء الطلب بنجاح",
                              ontap: () {
                                Get.back();
                              },
                            ),
                          );
                        },
                        child: Container(
                          width: 59,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(118, 158, 158, 158)),
                              color: Colors.white),
                          child: const Center(child: Text("الغاء")),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              child: Text("Max"),
                              alignment: Alignment.bottomRight,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("بيزك تيشرت"),
                              ],
                            ),
                            Text("الكمية : 1"),
                            Text(
                              "250 L.E.",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/tshirt.png",
                        width: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 115,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(139, 158, 158, 158))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => CustomAlertDialog(
                              messege: "تم الغاء الطلب بنجاح",
                              ontap: () {
                                Get.back();
                              },
                            ),
                          );
                        },
                        child: Container(
                          width: 59,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color:
                                      const Color.fromARGB(118, 158, 158, 158)),
                              color: Colors.white),
                          child: const Center(child: Text("الغاء")),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Align(
                              child: Text("Max"),
                              alignment: Alignment.bottomRight,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: 6,
                                  backgroundColor: Colors.black,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text("بيزك تيشرت"),
                              ],
                            ),
                            Text("الكمية : 1"),
                            Text(
                              "250 L.E.",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Image.asset(
                        "assets/tshirt.png",
                        width: 70,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
