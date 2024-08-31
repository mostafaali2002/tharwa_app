import 'package:flutter/material.dart';
import 'package:tharwa_app/widgets/circle_button.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 107,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border:
                Border.all(color: const Color.fromARGB(139, 158, 158, 158))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
                "1",
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 5,
              ),
              CircleButton(
                ontap: () {},
                iconData: Icons.add,
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
    );
  }
}
