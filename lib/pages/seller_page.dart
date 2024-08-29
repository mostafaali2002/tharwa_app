import 'package:flutter/material.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/widgets/tshirt_item.dart';

class SellerPage extends StatelessWidget {
  const SellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: 180,
          flexibleSpace: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage(
                          "assets/clothes.png",
                        ),
                        fit: BoxFit.fill)),
              ),
              Positioned(
                top: 70,
                left: 120,
                child: Container(
                  width: 137,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(188, 255, 255, 255)),
                  child: Center(
                    child: Text(
                      "تفاصيل المتجر",
                      style: TextStyle(
                          fontSize: 20, color: Color(Style.kPrimaryColorTwo)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 70,
                right: 20,
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(188, 255, 255, 255)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Color(Style.kPrimaryColorTwo),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 150,
                  left: 130,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 90,
                        width: 133,
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25)),
                          child: const Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              "Max",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 40,
                        left: 35,
                        child: Image.asset(
                          "assets/seller.png",
                          width: 65,
                          height: 65,
                        ),
                      )
                    ],
                  ))
            ],
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          child: GridView.builder(
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
        ));
  }
}
