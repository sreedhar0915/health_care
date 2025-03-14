import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class DoctorCard extends StatelessWidget {
  final String Drname;
  final String speciality;
  final String time;
  final String Drimage;
  const DoctorCard(
      {required this.Drname,
      required this.speciality,
      required this.time,
      required this.Drimage,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
              color: ColorConstants.white,
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorConstants.black),
              boxShadow: const [
                BoxShadow(
                    spreadRadius: 2,
                    blurRadius: 5,
                    color: ColorConstants.grey,
                    offset: Offset(0, 3))
              ]),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("$Drimage", fit: BoxFit.fitHeight),
                ),
                const SizedBox(width: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        Drname,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("$speciality"),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.access_alarm),
                          SizedBox(width: 5),
                          Text("$time")
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
      Positioned(
        bottom: 10,
        right: 5,
        child: Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
              color: ColorConstants.maincolor,
              border: Border.all(color: ColorConstants.black),
              borderRadius: BorderRadius.circular(15)),
          child: Center(child: Text("Appoiment")),
        ),
      ),
      Positioned(
        top: 20,
        right: 10,
        child: Row(
          children: [
            Icon(Icons.star, color: ColorConstants.Yellow),
            Text("4.8")
          ],
        ),
      )
    ]);
  }
}
