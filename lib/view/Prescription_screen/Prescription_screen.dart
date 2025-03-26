import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Global%20Widget/Medicine_card.dart';

class PrescriptionScreen extends StatelessWidget {
  const PrescriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.maincolor,
      appBar: Appbarsection(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "My Prescription",
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
                4,
                (index) => Padding(
                    padding: const EdgeInsets.all(4),
                    child: Container(
                      height: 300,
                      width: 400,
                      decoration: BoxDecoration(
                          color: ColorConstants.white,
                          borderRadius: BorderRadius.circular(15),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://media.springernature.com/lw685/springer-static/image/art%3A10.1007%2Fs11042-020-10151-w/MediaObjects/11042_2020_10151_Fig1_HTML.png"),
                              fit: BoxFit.cover)),
                    )),
              ))
            ],
          ),
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
