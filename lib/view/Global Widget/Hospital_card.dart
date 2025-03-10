import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class HospitalCard extends StatelessWidget {
  const HospitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 120,
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
                child: Image.asset("Assets/Images/rajagiri.jpg",
                    fit: BoxFit.fitHeight),
              ),
              SizedBox(width: 5),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rajagiri Hospital",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text("Multi Speciality Hospital"),
                    SizedBox(height: 30),
                    Row(
                      children: [
                        Icon(Icons.location_on_outlined),
                        SizedBox(width: 5),
                        Text("chunangamvely, Aluva")
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
