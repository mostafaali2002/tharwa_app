import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/csutom_card_bordding.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/custom_circle_avatar.dart';
import 'package:tharwa_app/widgets/custom_text_button.dart';

class BorddingTwoPage extends StatelessWidget {
  const BorddingTwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextButton(
                      color: Colors.black, text: "تخطي", fontSize: 17),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset("assets/onbordding2.png"),
            const customCardBordding(
              headingText: "لا تفوت العروض والخصومات",
              titleText:
                  "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج",
              subtitleText: "أليايت,سيت دو أيوسمود تيمبور",
            ),
            const SizedBox(
              height: 119,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomCircleAvatar(
                    firstCircleColor: Color(Style.kCircleColor),
                    secondCircleColor: Color(Style.kPrimaryColor),
                    thirdCircleColor: Color(Style.kCircleColor),
                  ),
                  CustomButton(
                      onPressed: () {},
                      width: 115,
                      btnColor: const Color(Style.kPrimaryColor),
                      text: "التالي")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
