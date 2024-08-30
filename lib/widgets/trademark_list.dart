import 'package:flutter/material.dart';

class trademarkList extends StatelessWidget {
  const trademarkList({
    super.key,
    required this.trademark1,
    required this.trademark2,
    required this.trademark3,
    required this.tradeOntap1,
    required this.tradeOntap2,
    required this.tradeOntap3,
  });
  final String trademark1;
  final String trademark2;
  final String trademark3;
  final VoidCallback tradeOntap1;
  final VoidCallback tradeOntap2;
  final VoidCallback tradeOntap3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: tradeOntap1,
          child: Image.asset(
            trademark1,
            width: 100,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: tradeOntap2,
          child: Image.asset(
            trademark2,
            width: 100,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        GestureDetector(
          onTap: tradeOntap3,
          child: Image.asset(
            trademark3,
            width: 100,
          ),
        ),
      ],
    );
  }
}
