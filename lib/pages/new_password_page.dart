import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/signin_page.dart';
import 'package:tharwa_app/widgets/custom_alert_dialog.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class NewPasswordPage extends StatefulWidget {
  const NewPasswordPage({super.key});

  @override
  State<NewPasswordPage> createState() => _NewPasswordPageState();
}

class _NewPasswordPageState extends State<NewPasswordPage> {
  bool ispassword = true;
  bool ispassword2 = true;
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
                                      validator: (data) {
                                        if (data!.isEmpty) {
                                          return "مطلوب ادخال بيانات";
                                        }
                                        return null;
                                      },
                                      obscureText: ispassword,
                                      label: "كلمه المرور الجديده",
                                      onChanged: (value) {},
                                      preicon: IconButton(
                                        onPressed: () {},
                                        icon: IconButton(
                                          onPressed: () {
                                            setState(() {
                                              ispassword = !ispassword;
                                            });
                                          },
                                          icon: ispassword
                                              ? const Icon(Icons.visibility_off)
                                              : const Icon(Icons.visibility),
                                          color: Colors.grey,
                                          iconSize: 25,
                                        ),
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
                                      obscureText: ispassword2,
                                      label: "تاكيد كلمه المرور",
                                      onChanged: (value) {},
                                      preicon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            ispassword2 = !ispassword2;
                                          });
                                        },
                                        icon: ispassword2
                                            ? const Icon(Icons.visibility_off)
                                            : const Icon(Icons.visibility),
                                        color: Colors.grey,
                                        iconSize: 25,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 61,
                                    ),
                                    CustomButton(
                                        onPressed: () {
                                          if (formkey.currentState!
                                              .validate()) {
                                            showDialog(
                                              context: context,
                                              builder: (context) =>
                                                  CustomAlertDialog(
                                                messege:
                                                    "تم تغيير كلمة المرور بنجاح",
                                                ontap: () {
                                                  Get.to(
                                                      () => const SignInPage());
                                                },
                                              ),
                                            );
                                          }
                                        },
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
      ),
    );
  }
}
