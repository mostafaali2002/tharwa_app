import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.ontap1,
    required this.ontap2,
    required this.ontap3,
    required this.ontap4,
    required this.isClick1,
    required this.isClick2,
    required this.isClick3,
    required this.isClick4,
  });
  final VoidCallback ontap1;
  final VoidCallback ontap2;
  final VoidCallback ontap3;
  final VoidCallback ontap4;
  final bool isClick1;
  final bool isClick2;
  final bool isClick3;
  final bool isClick4;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: ontap1,
          child: Container(
            height: 32,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isClick1
                    ? const Color(Style.kPrimaryColor)
                    : const Color(0xffFBEEDE)),
            child: Center(
                child: Text(
              "منتجات المنزل",
              style: TextStyle(
                  color:
                      isClick1 ? Colors.white : Color.fromARGB(146, 0, 0, 0)),
            )),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: ontap2,
          child: Container(
            height: 32,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isClick2
                    ? const Color(Style.kPrimaryColor)
                    : const Color(0xffFBEEDE)),
            child: Center(
                child: Text(
              "إلكترونيات",
              style: TextStyle(
                  color:
                      isClick2 ? Colors.white : Color.fromARGB(146, 0, 0, 0)),
            )),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: ontap3,
          child: Container(
            height: 32,
            width: 115,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isClick3
                    ? const Color(Style.kPrimaryColor)
                    : const Color(0xffFBEEDE)),
            child: Center(
                child: Text(
              "مستحضرات تجميل",
              style: TextStyle(
                  color:
                      isClick3 ? Colors.white : Color.fromARGB(146, 0, 0, 0)),
            )),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: ontap4,
          child: Container(
            height: 32,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: isClick4
                    ? const Color(Style.kPrimaryColor)
                    : const Color(0xffFBEEDE)),
            child: Center(
                child: Text(
              "ملابس",
              style: TextStyle(
                  color:
                      isClick4 ? Colors.white : Color.fromARGB(146, 0, 0, 0)),
            )),
          ),
        ),
      ],
    );
  }
}
