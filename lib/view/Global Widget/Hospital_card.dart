import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class HospitalCard extends StatelessWidget {
  final String name;
  final String speciality;
  final String location;
  const HospitalCard(
      {required this.name,
      required this.speciality,
      required this.location,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
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
                child: Image.asset("Assets/Images/rajagiri.jpg",
                    fit: BoxFit.fitHeight),
              ),
              SizedBox(width: 5),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(speciality),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            Text(
                              location,
                              style: TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
