import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';

class NotificationRow extends StatelessWidget {
  NotificationRow({super.key, this.avatarColor});
  Color? avatarColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            CircleAvatar(
              backgroundColor: avatarColor,
              radius: 7,
            ),
            const SizedBox(
              height: 23,
            ),
            const Text(
              "09:25 ص",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                "لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور ",
                style: TextStyle(
                    fontSize: 11, color: Color(Style.kPrimaryColorTwo)),
              ),
            ),
            Text(
              "أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور",
              style:
                  TextStyle(fontSize: 11, color: Color(Style.kPrimaryColorTwo)),
            ),
            Text(
              "أنكايديد",
              style:
                  TextStyle(fontSize: 11, color: Color(Style.kPrimaryColorTwo)),
            ),
          ],
        ),
        const SizedBox(
          width: 20,
        ),
        const CircleAvatar(
          backgroundColor: Color(Style.kPrimaryColor),
          radius: 30,
          child: Icon(
            Icons.notifications,
            color: Colors.white,
            size: 40,
          ),
        ),
      ],
    );
  }
}
