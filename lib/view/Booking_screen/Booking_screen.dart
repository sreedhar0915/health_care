import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Global%20Widget/Appointment_card.dart';

class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
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
                      "My Bookings",
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
                        child: Stack(children: [
                          Container(
                            height: 125,
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
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
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
                          ),
                          Positioned(
                            top: 5,
                            right: 10,
                            child: IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.cancel,
                                  size: 30,
                                  color: Colors.red,
                                )),
                          ),
                          Positioned(
                              bottom: 10,
                              right: 10,
                              child: InkWell(
                                onTap: () {
                                  BOTTOMSHEET(context, doctorlist[index]);
                                },
                                child: Container(
                                  height: 50,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color: ColorConstants.black),
                                      color: ColorConstants.maincolor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(child: Text("View Details")),
                                ),
                              ))
                        ])),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Future<dynamic> BOTTOMSHEET(BuildContext context, String doctor) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.maincolor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20))),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      doctor,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Your appointment with $doctor is scheduled for March 10 at 12:00 am",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              )),
        );
      },
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
