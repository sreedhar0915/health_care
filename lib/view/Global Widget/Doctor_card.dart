import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class DoctorCard extends StatelessWidget {
  const DoctorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: ColorConstants.black)),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("Assets/Images/Dr.Jimmy.jpg",
                      fit: BoxFit.fitHeight),
                ),
                const SizedBox(width: 5),
                const Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr.Jimmy",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text("pulmonologist"),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(Icons.access_alarm),
                          SizedBox(width: 5),
                          Text("10:00 am to 2:00 am")
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
      )
    ]);
  }
}
