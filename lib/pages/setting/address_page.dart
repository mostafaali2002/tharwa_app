import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/custom_button.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              CustomTextFormField(
                validator: (p0) {},
                label: "العنوان على الخريطة",
                onChanged: (value) {},
                preicon: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.add_location,
                    color: Color(0xffFF725E),
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                validator: (p0) {},
                label: "البلد",
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
                label: "المحافظة",
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
                label: "العنوان تفصيلي",
                onChanged: (value) {},
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                validator: (p0) {},
                label: "علامة مميزة",
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
