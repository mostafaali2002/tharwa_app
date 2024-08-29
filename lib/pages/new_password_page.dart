import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class NewPasswordPage extends StatelessWidget {
  const NewPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 48),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    Style.kAppLogo,
                    width: 127,
                    height: 71,
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Stack(
                    children: [
                      Image.asset(Style.kVector2),
                      Image.asset(
                        Style.kVector,
                        height: 450,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30),
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 10,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              child: Column(
                                children: [
                                  const Text(
                                    "كلمة المرور الجديدة",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  CustomTextFormField(
                                    validator: (p0) {},
                                    label: "كلمه المرور الجديده",
                                    onChanged: (value) {},
                                    preicon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_red_eye),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 32,
                                  ),
                                  CustomTextFormField(
                                    validator: (p0) {},
                                    label: "تاكيد كلمه المرور",
                                    onChanged: (value) {},
                                    preicon: IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.remove_red_eye),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 61,
                                  ),
                                  CustomButton(
                                      onPressed: () {},
                                      width: 230,
                                      btnColor:
                                          const Color(Style.kPrimaryColor),
                                      text: "حفظ"),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
