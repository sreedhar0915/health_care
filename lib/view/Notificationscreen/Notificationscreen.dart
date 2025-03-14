import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class Notificationscreen extends StatefulWidget {
  const Notificationscreen({super.key});

  @override
  State<Notificationscreen> createState() => _NotificationscreenState();
}

class _NotificationscreenState extends State<Notificationscreen> {
  List<String> Messagelist = [
    "Your appointment with dr.jimmy is secheduled for March 29 at 10:00 am",
    "Your appointment with dr.jimmy is secheduled for March 10 at 12:00 am",
    "Your appointment with dr.jimmy is secheduled for may 29 at 02:00 am",
    "Your appointment with dr.jimmy is secheduled for june 29 at 10:00 am",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: Appbarsection(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(height: 10),
                Row(
                  children: [
                    Text("Notification List",
                        style: TextStyle(
                            color: ColorConstants.headingcolor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("See All"),
                  ],
                ),
                SizedBox(height: 20),
                Column(
                  children: List.generate(
                    Messagelist.length,
                    (index) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: ColorConstants.maincolor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10),
                                  child: Icon(Icons.calendar_month),
                                ),
                                SizedBox(width: 8),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Upcoming Appointment",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(height: 5),
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: Text(
                                          Messagelist[index],
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 5),
                                Text("1 Hour ago")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
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
