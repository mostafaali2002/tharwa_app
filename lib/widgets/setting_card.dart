import 'package:flutter/material.dart';

class SettingCard extends StatelessWidget {
  SettingCard({
    super.key,
    required this.text,
    required this.icon,
    required this.ontap,
    this.textColor,
    this.iconColor,
    this.additionIcon,
  });
  final String text;
  final IconData icon;
  IconData? additionIcon;
  final VoidCallback ontap;
  Color? textColor;
  Color? iconColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              additionIcon,
              color: iconColor,
            ),
            const Spacer(
              flex: 1,
            ),
            Text(
              text,
              style: TextStyle(
                  color: textColor, fontSize: 14, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 10,
            ),
            Icon(
              icon,
              color: iconColor,
            ),
          ],
        ),
      ),
    );
  }
}
