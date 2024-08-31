import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/forget_password_page.dart';
import 'package:tharwa_app/pages/home_page.dart';
import 'package:tharwa_app/pages/signup_page.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/custom_text_button.dart';
import 'package:tharwa_app/widgets/sign_text_form.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formkey,
          child: Center(
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
                                      "تسجيل الدخول",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    SignTextFormField(),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: CustomTextButton(
                                          onpressed: () {
                                            Get.to(() =>
                                                const ForgetPasswordPage());
                                          },
                                          color: const Color(0xff848282),
                                          text: "نسيت كلمة المرور؟",
                                          fontSize: 12),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    CustomButton(
                                        onPressed: () {
                                          if (formkey.currentState!
                                              .validate()) {
                                            Get.to(() => const HomePage());
                                          }
                                        },
                                        width: 230,
                                        btnColor:
                                            const Color(Style.kPrimaryColor),
                                        text: "تسجيل الدخول"),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomTextButton(
                                          onpressed: () {
                                            Get.to(() => const SignUpPage());
                                          },
                                          text: "قم بالتسجيل الآن",
                                          color: Colors.black,
                                          fontSize: 12,
                                        ),
                                        const Text(
                                          "لا تملك حساب؟",
                                          style: TextStyle(fontSize: 12),
                                        )
                                      ],
                                    )
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
      ),
    );
  }
}
