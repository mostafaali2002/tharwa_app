import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/custom_circle_avatar.dart';

class TshirtItem extends StatelessWidget {
  const TshirtItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color.fromARGB(90, 158, 158, 158))),
      child: Stack(
        children: [
          Column(
            children: [
              Image.asset("assets/tshirt.png"),
              const Text(
                "Max",
                style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCircleAvatar(
                        firstCircleColor: Colors.grey,
                        secondCircleColor: Color(0xffFF725E),
                        thirdCircleColor: Colors.black),
                    Text(
                      "بيزك تيشرت",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "255 L.E.",
                    style: TextStyle(
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
              height: 40,
              decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      topLeft: Radius.circular(10))),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                  color: Colors.white,
                ),
              )),
          Positioned(
            top: 282,
            child: Container(
                height: 40,
                decoration: const BoxDecoration(
                    color: Color(Style.kPrimaryColor),
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomLeft: Radius.circular(10))),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    FontAwesomeIcons.cartPlus,
                    color: Colors.white,
                  ),
                )),
          )
        ],
      ),
    );
  }
}
