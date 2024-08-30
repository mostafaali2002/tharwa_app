import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';

class CustomCategoryImage extends StatelessWidget {
  const CustomCategoryImage({
    super.key,
    required this.image,
    required this.categoryName,
    required this.color,
    required this.ontap,
  });
  final String image;
  final String categoryName;
  final Color color;
  final VoidCallback ontap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: CircleAvatar(
            backgroundColor: color,
            child: Image.asset(image),
            radius: 25,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          categoryName,
          style: const TextStyle(color: Color(Style.kPrimaryColorTwo)),
        )
      ],
    );
  }
}
