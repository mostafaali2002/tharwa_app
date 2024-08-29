import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class ChangeInfoPage extends StatelessWidget {
  const ChangeInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "تعديل البيانات الشخصية",
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
                onPressed: () {},
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Color(Style.kPrimaryColorTwo),
                  size: 30,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Stack(
                // alignment: Alignment.bottomRight,
                clipBehavior: Clip.none,
                children: [
                  Image.asset("assets/image.png"),
                  Positioned(
                    left: 80,
                    top: 90,
                    child: Card(
                      elevation: 6,
                      child: Icon(Icons.edit,
                          color: Color(Style.kPrimaryColorTwo)),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "تعديل البيانات الشخصية",
                style: TextStyle(fontSize: 13, color: Colors.grey),
              ),
              SizedBox(
                height: 24,
              ),
              CustomTextFormField(
                validator: (p0) {},
                label: "الاسم",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                validator: (p0) {},
                label: "رقم الهاتف/البريد الإلكتروني",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                validator: (p0) {},
                label: "النوع",
                onChanged: (value) {},
                preicon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                validator: (p0) {},
                label: "السن",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 61,
              ),
              CustomButton(
                  onPressed: () {},
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
    );
  }
}
