import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class SpecialitydetailScreen extends StatelessWidget {
  final String Name;
  final String description;
  final String image;
  const SpecialitydetailScreen(
      {super.key,
      required this.Name,
      required this.description,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: Appbarsection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.maincolor,
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(
                image,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.maincolor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("Assets/Images/backgroud.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Text(
                    Name,
                    style: TextStyle(
                      color: ColorConstants.headingcolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      description,
                      maxLines: 20,
                      style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
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
