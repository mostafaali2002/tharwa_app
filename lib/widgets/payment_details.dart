import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: const Color.fromARGB(101, 158, 158, 158)),
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "L.E 500 :المجموع",
                style: TextStyle(
                    fontSize: 15, color: Color(Style.kPrimaryColorTwo)),
              ),
              SizedBox(height: 5),
              Text(
                "L.E 50 :مصاريف الشحن",
                style: TextStyle(
                    fontSize: 15, color: Color(Style.kPrimaryColorTwo)),
              ),
              SizedBox(height: 5),
              Text(
                "L.E 550 :الاجمالي",
                style: TextStyle(
                    fontSize: 15, color: Color(Style.kPrimaryColorTwo)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
