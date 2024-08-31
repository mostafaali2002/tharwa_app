import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/setting/account_page.dart';
import 'package:tharwa_app/widgets/custom_alert_dialog.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "عنوان الشحن",
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
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Color(Style.kPrimaryColorTwo),
                  size: 30,
                )),
          )
        ],
      ),
      body: Form(
        key: formkey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                CustomTextFormField(
                  validator: (data) {
                    if (data!.isEmpty) {
                      return "مطلوب ادخال بيانات";
                    }
                    return null;
                  },
                  label: "العنوان على الخريطة",
                  onChanged: (value) {},
                  preicon: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_location,
                      color: Color(0xffFF725E),
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
                  label: "البلد",
                  onChanged: (value) {},
                  preicon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down),
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
                  label: "المحافظة",
                  onChanged: (value) {},
                  preicon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down),
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
                  label: "العنوان تفصيلي",
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 32,
                ),
                CustomTextFormField(
                  validator: (data) {
                    if (data!.isEmpty) {
                      return "Field is required";
                    }
                    return null;
                  },
                  label: "علامة مميزة",
                  onChanged: (value) {},
                ),
                const SizedBox(
                  height: 61,
                ),
                CustomButton(
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        showDialog(
                          context: context,
                          builder: (context) => CustomAlertDialog(
                            messege: "تم تعديل البيانات",
                            ontap: () {
                              Get.to(() => const AccountPage());
                            },
                          ),
                        );
                      }
                    },
                    width: 230,
                    btnColor: const Color(Style.kPrimaryColor),
                    text: "حفظ"),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
