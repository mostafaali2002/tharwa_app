import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/address_order_page.dart';
import 'package:tharwa_app/widgets/cart_item.dart';
import 'package:tharwa_app/widgets/custom_button.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
              const CartItem(),
              const SizedBox(
                height: 25,
              ),
              const CartItem(),
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
