import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({
    super.key,
    required this.firstCircleColor,
    required this.secondCircleColor,
    required this.thirdCircleColor,
  });
  final Color firstCircleColor;
  final Color secondCircleColor;
  final Color thirdCircleColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: firstCircleColor,
            radius: 7,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: secondCircleColor,
            radius: 7,
          ),
        ),
        const SizedBox(
          width: 7,
        ),
        GestureDetector(
          onTap: () {},
          child: CircleAvatar(
            backgroundColor: thirdCircleColor,
            radius: 7,
          ),
        ),
      ],
    );
  }
}
