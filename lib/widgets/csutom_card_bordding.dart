import 'package:flutter/material.dart';

class customCardBordding extends StatelessWidget {
  const customCardBordding({
    super.key,
    required this.headingText,
    required this.titleText,
    required this.subtitleText,
  });
  final String headingText;
  final String titleText;
  final String subtitleText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335,
      height: 135,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(19)),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 10,
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Text(
              headingText,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            Text(
              titleText,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
            Text(
              subtitleText,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
