import 'package:flutter/material.dart';
import 'package:tharwa_app/widgets/text_form.dart';

class SignTextFormField extends StatefulWidget {
  @override
  State<SignTextFormField> createState() => _SignTextFormFieldState();
}

class _SignTextFormFieldState extends State<SignTextFormField> {
  bool ispassword = true;
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
          obscureText: ispassword,
          label: "كلمة المرور",
          onChanged: (value) {},
          preicon: IconButton(
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
      ],
    );
  }
}
