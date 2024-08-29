import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/cart_item.dart';

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
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Color(Style.kPrimaryColorTwo),
                  size: 30,
                )),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            CartItem(),
            SizedBox(
              height: 25,
            ),
            CartItem()
          ],
        ),
      ),
    );
  }
}
