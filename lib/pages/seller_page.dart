import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/filter_search_page.dart';
import 'package:tharwa_app/pages/result_search_page.dart';
import 'package:tharwa_app/widgets/text_form.dart';
import 'package:tharwa_app/widgets/tshirt_item.dart';

class SellerPage extends StatelessWidget {
  const SellerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
                top: 65,
                right: 20,
                child: Container(
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(188, 255, 255, 255)),
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Color(Style.kPrimaryColorTwo),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 140,
                  left: 130,
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 80,
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
                        bottom: 30,
                        left: 35,
                        child: Image.asset(
                          "assets/seller.png",
                          width: 65,
                          height: 65,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const FilterSearchPage());
                      },
                      child: Container(
                        width: 50,
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color.fromARGB(130, 72, 53, 21)),
                            borderRadius: BorderRadius.circular(15),
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        child: IconButton(
                          onPressed: () {
                            Get.to(() => const FilterSearchPage());
                          },
                          icon: const Icon(
                            FontAwesomeIcons.sliders,
                            size: 30,
                            color: Color(Style.kPrimaryColorTwo),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: 250,
                      child: CustomTextFormField(
                        preicon: IconButton(
                            onPressed: () {
                              Get.to(() => const ResultSearchPage());
                            },
                            icon: const Icon(Icons.search)),
                        onChanged: (p0) {},
                        label: "ابحث بالعلامه التجاريه",
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
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
              ),
            ],
          ),
        ));
  }
}
