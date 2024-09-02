import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/address_order_page.dart';
import 'package:tharwa_app/widgets/cart_item.dart';
import 'package:tharwa_app/widgets/custom_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int count1 = 1;
  int count2 = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "السلة",
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
              CartItem(
                count1: count1,
                ontap: () {
                  setState(() {
                    if (count1 == 0) {
                      count1 = 1;
                    } else {
                      count1--;
                    }
                  });
                },
                ontap2: () {
                  setState(() {
                    count1++;
                  });
                },
              ),
              const SizedBox(
                height: 25,
              ),
              CartItem(
                count1: count2,
                ontap: () {
                  setState(() {
                    setState(() {
                      if (count2 == 0) {
                        count2 = 1;
                      } else {
                        count2--;
                      }
                    });
                  });
                },
                ontap2: () {
                  setState(() {
                    count2++;
                  });
                },
              ),
              const SizedBox(
                height: 300,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "500 L.E.",
                      style: TextStyle(
                          fontSize: 24, color: Color(Style.kPrimaryColor)),
                    ),
                    Text(
                      ":الكل (عنصرين)",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomButton(
                  onPressed: () {
                    Get.to(() => const AddressOrderPage());
                  },
                  width: 230,
                  btnColor: const Color(Style.kPrimaryColor),
                  text: "استمرار")
            ],
          ),
        ),
      ),
    );
  }
}
