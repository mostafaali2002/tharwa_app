import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/code_page.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({super.key});

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
                                      "نسيت كلمة المرور",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 32,
                                    ),
                                    CustomTextFormField(
                                        validator: (data) {
                                          if (data!.isEmpty) {
                                            return "مطلوب ادخال بيانات";
                                          }
                                          return null;
                                        },
                                        label: "رقم الهاتف/البريد الإلكتروني",
                                        onChanged: (value) {}),
                                    const SizedBox(
                                      height: 180,
                                    ),
                                    CustomButton(
                                        onPressed: () {
                                          if (formkey.currentState!
                                              .validate()) {
                                            Get.to(() => const CodePage());
                                          }
                                        },
                                        width: 230,
                                        btnColor:
                                            const Color(Style.kPrimaryColor),
                                        text: "إرسال رمز التحقق"),
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
      ),
    );
  }
}
