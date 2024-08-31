import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 32,
            width: 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFBEEDE)),
            child: const Center(
                child: Text(
              "منتجات المنزل",
              style: TextStyle(color: Color.fromARGB(146, 0, 0, 0)),
            )),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 32,
            width: 65,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFBEEDE)),
            child: const Center(
                child: Text(
              "إلكترونيات",
              style: TextStyle(color: Color.fromARGB(146, 0, 0, 0)),
            )),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 32,
            width: 115,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xffFBEEDE)),
            child: const Center(
                child: Text(
              "مستحضرات تجميل",
              style: TextStyle(color: Color.fromARGB(146, 0, 0, 0)),
            )),
          ),
        ),
        const SizedBox(
          width: 5,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 32,
            width: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(Style.kPrimaryColor)),
            child: const Center(
                child: Text(
              "ملابس",
              style: TextStyle(color: Colors.white),
            )),
          ),
        ),
      ],
    );
  }
}
