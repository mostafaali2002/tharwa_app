import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.onpressed,
  });
  final String text;
  final Color color;
  final double fontSize;
  final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
