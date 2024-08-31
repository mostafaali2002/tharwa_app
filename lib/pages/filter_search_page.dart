import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tharwa_app/constant.dart';
import 'package:tharwa_app/pages/result_search_page.dart';
import 'package:tharwa_app/widgets/custom_button.dart';

class FilterSearchPage extends StatefulWidget {
  const FilterSearchPage({super.key});

  @override
  State<FilterSearchPage> createState() => _FilterSearchPageState();
}

class _FilterSearchPageState extends State<FilterSearchPage> {
  double height = 255;
  int groupValue = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_forward,
                  color: Color(Style.kPrimaryColorTwo),
                  size: 30,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "التصنيفات",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
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
                          "احذيه",
                          style: TextStyle(color: Color.fromARGB(146, 0, 0, 0)),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 32,
                        width: 75,
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
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 32,
                        width: 115,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color(0xffFBEEDE)),
                        child: Text(
                          textAlign: TextAlign.center,
                          "مستحضرات تجميل",
                          style: TextStyle(color: Color.fromARGB(146, 0, 0, 0)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 32,
                        width: 60,
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
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 32,
                      width: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffFBEEDE)),
                      child: const Center(
                          child: Text(
                        "أزياء طفال",
                        style: TextStyle(color: Color.fromARGB(146, 0, 0, 0)),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
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
                        "حقائب",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 32,
                      width: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(Style.kPrimaryColor)),
                      child: const Center(
                          child: Text(
                        "اكسسوارات",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
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
                ],
              ),
              const SizedBox(
                height: 32,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "نطاق السعر",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 31,
              ),
              Slider(
                  label: "${height.round().toString()} L.E",
                  inactiveColor: const Color.fromARGB(101, 158, 158, 158),
                  thumbColor: const Color(Style.kPrimaryColor),
                  activeColor: const Color(Style.kPrimaryColor),
                  divisions: 15,
                  value: height,
                  min: 100.0,
                  max: 2500.0,
                  onChanged: (value) {
                    setState(() {
                      height = value;
                    });
                  }),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "ترتيب حسب",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "الأحدث",
                    ),
                    Radio<int>(
                      fillColor: const MaterialStatePropertyAll(
                          Color(Style.kPrimaryColorTwo)),
                      value: 1,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "الأقدم",
                    ),
                    Radio<int>(
                      fillColor: const MaterialStatePropertyAll(
                          Color(Style.kPrimaryColorTwo)),
                      value: 2,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                        });
                      },
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "الأرخص",
                    ),
                    Radio<int>(
                      fillColor: const MaterialStatePropertyAll(
                          Color(Style.kPrimaryColorTwo)),
                      value: 3,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const Text(
                      "الأغلى",
                    ),
                    Radio<int>(
                      fillColor: const MaterialStatePropertyAll(
                          Color(Style.kPrimaryColorTwo)),
                      value: 4,
                      groupValue: groupValue,
                      onChanged: (value) {
                        setState(() {
                          groupValue = value!;
                        });
                      },
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                  onPressed: () {
                    Get.to(() => const ResultSearchPage());
                  },
                  width: 230,
                  btnColor: const Color(Style.kPrimaryColor),
                  text: "عرض النتائج")
            ],
          ),
        ),
      ),
    );
  }
}
