import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({
    super.key,
    required this.iconData,
    required this.ontap,
  });
  final IconData iconData;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: const Color(Style.kPrimaryColorTwo)),
        height: 25,
        width: 25,
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}
