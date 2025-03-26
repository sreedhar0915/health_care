import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Global%20Widget/Medicine_card.dart';

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({super.key});

  @override
  State<MedicineScreen> createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
  List<String> doctorlist = [
    "Dr.ishak",
    "Dr.jimmy",
    "Dr.james",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.maincolor,
      appBar: Appbarsection(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        "My Medicine",
                        style: TextStyle(
                            color: ColorConstants.headingcolor,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 30),
                          )),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                      children: List.generate(
                    doctorlist.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(4),
                      child: MedicineCard(Doctor: doctorlist[index]),
                    ),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar Appbarsection() {
    return AppBar(
      backgroundColor: ColorConstants.white,
      surfaceTintColor: ColorConstants.white,
      title: Center(child: Image.asset("Assets/Images/title.jpg")),
    );
  }
}
