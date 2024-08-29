import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/onbordding2_page.dart';
import 'package:tharwa_app/pages/signin_page.dart';
import 'package:tharwa_app/widgets/csutom_card_bordding.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/custom_circle_avatar.dart';
import 'package:tharwa_app/widgets/custom_text_button.dart';

class BorddingOnePage extends StatelessWidget {
  const BorddingOnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomTextButton(
                      onpressed: () {
                        Get.to(() => const SignInPage());
                      },
                      color: Colors.black,
                      text: "تخطي",
                      fontSize: 17),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Image.asset("assets/onbordding1.png"),
            const customCardBordding(
              headingText: "تسوق أونلاين",
              titleText:
                  "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج",
              subtitleText: "أليايت,سيت دو أيوسمود تيمبور",
            ),
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomCircleAvatar(
                    firstCircleColor: Color(Style.kCircleColor),
                    secondCircleColor: Color(Style.kCircleColor),
                    thirdCircleColor: Color(Style.kPrimaryColor),
                  ),
                  CustomButton(
                      onPressed: () {
                        Get.to(() => const BorddingTwoPage());
                      },
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
