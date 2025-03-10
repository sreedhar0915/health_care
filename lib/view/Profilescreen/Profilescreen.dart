import 'package:flutter/material.dart';
import 'package:health_care/main.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Global%20Widget/Personinformationcard.dart';
import 'package:health_care/view/Startscreen/Startscreen.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  List<String> informations = [
    "My Prescription",
    "My Medication",
    "Emergency Contact",
    "My Bookings",
    "My Reminders",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbarsection(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                CircleAvatar(
                    radius: 50,
                    backgroundColor: ColorConstants.maincolor,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.person,
                          size: 50,
                        ))),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Name :",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.headingcolor),
                    ),
                    SizedBox(width: 5),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.headingcolor),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Phone Number :",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.headingcolor),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "$phoneno",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.headingcolor),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Date Of Birth :",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.headingcolor),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "$DOB",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.headingcolor),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Text(
                      "Email ID :",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.headingcolor),
                    ),
                    SizedBox(width: 5),
                    Text(
                      "$Email",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.headingcolor),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  children: List.generate(
                    informations.length,
                    (index) => InkWell(
                      child: PersonInformationCard(
                          information: informations[index].toString()),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Startscreen(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: ColorConstants.red)),
                    child: Center(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Text(
                            "Delete Account",
                            style: TextStyle(
                                color: ColorConstants.red,
                                fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(
                            Icons.exit_to_app_outlined,
                            color: ColorConstants.red,
                          )
                        ],
                      ),
                    )),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  AppBar Appbarsection() {
    return AppBar(
      backgroundColor: ColorConstants.white,
      surfaceTintColor: ColorConstants.white,
      title: Center(child: Image.asset("Assets/Images/title.jpg")),
    );
  }
}
