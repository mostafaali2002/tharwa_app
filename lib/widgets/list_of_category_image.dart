import 'package:flutter/material.dart';
import 'package:tharwa_app/widgets/custom_category_image.dart';

class ListOfCategoryImage extends StatelessWidget {
  const ListOfCategoryImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          CustomCategoryImage(
            ontap: () {},
            color: const Color(0xffEBEBEB),
            categoryName: "أحذية",
            image: "assets/shose.png",
          ),
          const SizedBox(
            width: 16,
          ),
          CustomCategoryImage(
            ontap: () {},
            color: const Color(0xffEBEBEB),
            categoryName: "جينز",
            image: "assets/trouther.png",
          ),
          const SizedBox(
            width: 16,
          ),
          CustomCategoryImage(
            ontap: () {},
            color: const Color(0xffEBEBEB),
            categoryName: "قمصان",
            image: "assets/shirt.png",
          ),
          const SizedBox(
            width: 16,
          ),
          CustomCategoryImage(
            ontap: () {},
            color: const Color(0xffEBEBEB),
            categoryName: "تيشرتات",
            image: "assets/shirt2.png",
          ),
          const SizedBox(
            width: 16,
          ),
          CustomCategoryImage(
            ontap: () {},
            categoryName: "الكل",
            image: "assets/all.png",
            color: const Color(0xffFFEBB3),
          ),
        ],
      ),
    );
  }
}
