import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/custom_button.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({
    super.key,
    required this.messege,
    required this.ontap,
  });
  final String messege;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      actions: [
        Center(
          child: CustomButton(
              onPressed: ontap,
              width: 230,
              btnColor: const Color(Style.kPrimaryColor),
              text: "حسنا"),
        )
      ],
      icon: const Icon(FontAwesomeIcons.circleCheck,
          size: 70, color: Colors.green),
      title: Text(
        messege,
        style: const TextStyle(fontSize: 30, color: Colors.black),
      ),
    );
  }
}
