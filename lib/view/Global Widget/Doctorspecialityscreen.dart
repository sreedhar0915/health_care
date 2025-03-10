import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class Doctorspecialitycard extends StatelessWidget {
  final String speciality;
  const Doctorspecialitycard({required this.speciality, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 150,
      child: Column(
        children: [
          Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.maincolor,
              ),
              child: Image.asset("Assets/Images/pulmonologist.png",
                  fit: BoxFit.cover)),
          SizedBox(height: 10),
          Text(
            speciality,
            style: TextStyle(
                color: ColorConstants.black,
                fontWeight: FontWeight.bold,
                fontSize: 20),
          ),
        ],
      ),
    );
  }
}
