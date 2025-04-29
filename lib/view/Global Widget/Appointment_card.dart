import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class AppointmentCard extends StatelessWidget {
  final String doctor;

  const AppointmentCard({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 250,
      padding: EdgeInsets.all(10),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Tele Consultation"),
          SizedBox(height: 10),
          Row(
            children: [
              CircleAvatar(
                radius: 20,
                child: Icon(Icons.person),
              ),
              SizedBox(width: 5),
              Text(
                doctor,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            "Waiting for user",
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
