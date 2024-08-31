import 'package:flutter/material.dart';
import 'package:tharwa_app/widgets/tshirt_item.dart';

class CustomGride extends StatelessWidget {
  const CustomGride({
    super.key,
    this.physics,
  });
  final ScrollPhysics? physics;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: GridView.builder(
        physics: physics,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 16),
        itemCount: 4,
        itemBuilder: (context, index) {
          return const TshirtItem();
        },
      ),
    );
  }
}
