import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/setting/my_order_page.dart';
import 'package:tharwa_app/widgets/custom_alert_dialog.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/payment_details.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  int groupValue = 1;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formkey = GlobalKey();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "الدفع",
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 32),
              const PaymentDetails(),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "بطاقة إتمان",
                  ),
                  Radio(
                    fillColor: const MaterialStatePropertyAll(
                        Color(Style.kPrimaryColorTwo)),
                    value: 1,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "نقدا عند الاستلام",
                  ),
                  Radio(
                    fillColor: const MaterialStatePropertyAll(
                        Color(Style.kPrimaryColorTwo)),
                    value: 2,
                    groupValue: groupValue,
                    onChanged: (value) {
                      setState(() {
                        groupValue = value!;
                      });
                    },
                  )
                ],
              ),
              const SizedBox(height: 25),
              const Divider(
                color: Colors.grey,
                height: 2,
                endIndent: 30,
                indent: 30,
              ),
              const SizedBox(height: 31),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextFormField(
                  onChanged: (p0) {},
                  validator: (data) {
                    if (data!.isEmpty) {
                      return "مطلوب ادخال بيانات";
                    }
                    return null;
                  },
                  label: "رقم البطاقة",
                ),
              ),
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: CustomTextFormField(
                  onChanged: (p0) {},
                  validator: (data) {
                    if (data!.isEmpty) {
                      return "مطلوب ادخال بيانات";
                    }
                    return null;
                  },
                  label: "اسم حامل البطاقة",
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Container(
                      width: 160,
                      child: CustomTextFormField(
                        onChanged: (p0) {},
                        label: "رمز الأمان",
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "مطلوب ادخال بيانات";
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      width: 160,
                      child: CustomTextFormField(
                        onChanged: (p0) {},
                        label: "تاريخ الانتهاء",
                        validator: (p0) {
                          if (p0!.isEmpty) {
                            return "مطلوب ادخال بيانات";
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 46),
              CustomButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      showDialog(
                        context: context,
                        builder: (context) => CustomAlertDialog(
                          messege: "تم الطلب بنجاح",
                          ontap: () {
                            Get.to(() => const MyOrderPage());
                          },
                        ),
                      );
                    }
                  },
                  width: 230,
                  btnColor: const Color(Style.kPrimaryColor),
                  text: "استمرار"),
            ],
          ),
        ),
      ),
    );
  }
}
