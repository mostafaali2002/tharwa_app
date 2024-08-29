import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/csutom_card_bordding.dart';
import 'package:tharwa_app/widgets/custom_button.dart';

class BorddingThreePage extends StatelessWidget {
  const BorddingThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Image.asset("assets/onbordding3.png"),
            const customCardBordding(
              headingText: "دفع فوري بأبسط الطرق",
              titleText:
                  "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج",
              subtitleText: "أليايت,سيت دو أيوسمود تيمبور",
            ),
            const SizedBox(
              height: 100,
            ),
            CustomButton(
                onPressed: () {},
                width: 178,
                btnColor: const Color(Style.kPrimaryColor),
                text: "ابد الان")
          ],
        ),
      ),
    );
  }
}
