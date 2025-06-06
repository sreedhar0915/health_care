import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class PersonInformationCard extends StatelessWidget {
  final String information;
  final dynamic ontap;
  const PersonInformationCard(
      {super.key, required this.information, this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
              color: ColorConstants.white,
              borderRadius: BorderRadius.circular(15),
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
                Text(information),
                Spacer(),
                Icon(Icons.arrow_forward_ios_outlined),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
