import 'package:flutter/material.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class SignTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
          height: 32,
        ),
        CustomTextFormField(
          validator: (data) {
            if (data!.isEmpty) {
              return "مطلوب ادخال بيانات";
            }
            return null;
          },
          obscureText: true,
          label: "كلمة المرور",
          onChanged: (value) {},
          preicon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.remove_red_eye),
          ),
        ),
      ],
    );
  }
}
