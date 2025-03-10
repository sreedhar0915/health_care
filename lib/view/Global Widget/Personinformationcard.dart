import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class PersonInformationCard extends StatelessWidget {
  final String information;
  const PersonInformationCard({super.key, required this.information});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorConstants.black),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Text(information),
              Spacer(),
              Icon(Icons.arrow_forward_ios_outlined),
            ],
          ),
        ),
      ),
    );
  }
}
