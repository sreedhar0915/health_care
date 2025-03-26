import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Global%20Widget/Appointment_card.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  List<String> doctorlist = [
    "Dr.Jimmy",
    "Dr.Ishak",
    "Dr.Willam",
    "Dr.John",
    "Dr.James"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.maincolor,
      appBar: Appbarsection(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "My Reminders",
                    style: TextStyle(
                        color: ColorConstants.headingcolor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "+",
                        style: TextStyle(fontSize: 30),
                      )),
                ],
              ),
              SizedBox(height: 10),
              Column(
                  children: List.generate(
                doctorlist.length,
                (index) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      height: 130,
                      width: 400,
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
                                doctorlist[index],
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "secheduled for March  at 10:00 am",
                            style:
                                TextStyle(color: ColorConstants.headingcolor),
                          ),
                        ],
                      ),
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }

  AppBar Appbarsection() {
    return AppBar(
      backgroundColor: ColorConstants.white,
      surfaceTintColor: ColorConstants.white,
      title: Center(child: Image.asset("Assets/Images/title.jpg")),
    );
  }
}
