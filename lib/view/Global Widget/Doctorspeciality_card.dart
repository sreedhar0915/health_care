import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class Doctorspecialitycard extends StatelessWidget {
  final String speciality;
  final Color color;
  final IconData icon;
  const Doctorspecialitycard(
      {required this.speciality,
      required this.icon,
      required this.color,
      super.key});

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
              child: Icon(
                icon,
                color: color,
              )),
          SizedBox(height: 10),
          Text(
            speciality,
            style: TextStyle(
                color: ColorConstants.black,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          ),
        ],
      ),
    );
  }
}
