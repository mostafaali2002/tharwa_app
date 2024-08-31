import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/payment_page.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/payment_details.dart';

class SummaryOrderPage extends StatelessWidget {
  const SummaryOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "ملخص الطلب",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "العناصر",
                style: TextStyle(
                    color: Color(Style.kPrimaryColorTwo),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 107,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(139, 158, 158, 158))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 5,
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
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "250 L.E.",
                              style: TextStyle(
                                fontSize: 15,
                              ),
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
                height: 107,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: const Color.fromARGB(139, 158, 158, 158))),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      const Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30),
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
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "250 L.E.",
                              style: TextStyle(
                                fontSize: 15,
                              ),
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "العنوان",
                style: TextStyle(
                    color: Color(Style.kPrimaryColorTwo),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                      color: const Color.fromARGB(101, 158, 158, 158)),
                ),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "البلد : مصر",
                        style: TextStyle(
                            fontSize: 15, color: Color(Style.kPrimaryColorTwo)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "المحافظة : القاهرة",
                        style: TextStyle(
                            fontSize: 15, color: Color(Style.kPrimaryColorTwo)),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "العنوان : مدينة نصر - أول مكرم - شارع 1 عمارة 9 الدور 3",
                        style: TextStyle(
                            fontSize: 15, color: Color(Style.kPrimaryColorTwo)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "السعر",
                style: TextStyle(
                    color: Color(Style.kPrimaryColorTwo),
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const PaymentDetails(),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: CustomButton(
                  onPressed: () {
                    Get.to(() => const PaymentPage());
                  },
                  width: 230,
                  btnColor: const Color(Style.kPrimaryColor),
                  text: "استمرار"),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
