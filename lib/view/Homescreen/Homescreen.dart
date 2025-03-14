import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Doctorscreen/Doctorscreen.dart';
import 'package:health_care/view/Global%20Widget/Appointment_card.dart';
import 'package:health_care/view/Global%20Widget/Doctor_card.dart';
import 'package:health_care/view/Global%20Widget/Doctorspecialityscreen.dart';
import 'package:health_care/view/Global%20Widget/Hospital_card.dart';
import 'package:health_care/view/Hospitalscreen/Hospitalscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Map<String, dynamic>> Doctorspecialitylist = [
    {"icon": Icons.coronavirus, "color": Colors.red, "Name": "Pulmonologist"},
    {"icon": Icons.child_care, "color": Colors.blue, "Name": "Pediatrics"},
    {"icon": Icons.psychology, "color": Colors.yellow, "Name": "Mental Health"},
    {
      "icon": Icons.health_and_safety,
      "color": Colors.green,
      "Name": "Dermatology"
    },
    {
      "icon": Icons.heart_broken_sharp,
      "color": Colors.purple,
      "Name": "Cardiologist"
    },
    {
      "icon": Icons.remove_red_eye,
      "color": Colors.brown,
      "Name": "Ophthalmologist"
    },
  ];
  final List<Map<String, dynamic>> Doctorlist = [
    {
      "name": "Dr.Jimmy",
      "speciality": "Pulmonologist",
      "time": "12:00 am to 02:00 pm"
    },
    {
      "name": "Dr.Ishak",
      "speciality": "Dermatology",
      "time": "09:00 am to 01:00 pm"
    },
    {
      "name": "Dr.John",
      "speciality": "Cardiologist",
      "time": "11:00 am to 03:00 pm"
    },
    {
      "name": "Dr.willam",
      "speciality": "Ophthalmologist",
      "time": "08:00 am to 12:00 pm"
    },
  ];
  final List<Map<String, dynamic>> Hospitallist = [
    {
      "name": "Rajagiri Hospital",
      "speciality": "Multi Speciality Hospital",
      "location": "Chunangamvely, Ernakulam"
    },
    {
      "name": "Apollo Hospital",
      "speciality": "Multi Speciality Hospital",
      "location": "Cable Junction, Ernakulam"
    },
    {
      "name": "Aster Medcity",
      "speciality": "Multi Speciality Hospital",
      "location": "South Chittoor, Ernakulam"
    },
    {
      "name": "Amritha Hospital",
      "speciality": "Multi Speciality Hospital",
      "location": "Edappally, Ernakulam"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.white,
        appBar: Appbarsection(),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: "Search Doctors",
                    labelStyle: TextStyle(color: ColorConstants.maincolor),
                    hintText: "Doctors",
                    suffixIcon: Icon(Icons.search),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: ColorConstants.maincolor, width: 2)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: ColorConstants.maincolor, width: 1)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            BorderSide(color: ColorConstants.red, width: 1)),
                  ),
                ),
                SizedBox(height: 20),
                CarouselSlider(
                    options: CarouselOptions(
                      height: 280.0,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 2),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      onPageChanged: (index, reason) {},
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [
                      Container(
                          height: 200,
                          width: 200,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: ColorConstants.maincolor)),
                          child: Image.asset(
                            "Assets/Images/ad2.jpeg",
                            fit: BoxFit.cover,
                          )),
                      Container(
                          height: 200,
                          width: 200,
                          child: Image.asset(
                            "Assets/Images/ad3.jpeg",
                            fit: BoxFit.cover,
                          )),
                      Container(
                          height: 200,
                          width: 200,
                          child: Image.asset(
                            "Assets/Images/ad4.jpeg",
                            fit: BoxFit.cover,
                          )),
                    ]),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Text("Todays Appointment",
                        style: TextStyle(
                            color: ColorConstants.headingcolor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("See All"),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 130,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                    itemCount: Doctorlist.length,
                    itemBuilder: (context, index) => AppointmentCard(
                      doctor: Doctorlist[index]["name"].toString(),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Doctor Specialty",
                        style: TextStyle(
                            color: ColorConstants.headingcolor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("See All"),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 90,
                  child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => SizedBox(
                            width: 20,
                          ),
                      itemCount: Doctorspecialitylist.length,
                      itemBuilder: (context, index) => Doctorspecialitycard(
                          color: Doctorspecialitylist[index]["color"],
                          icon: Doctorspecialitylist[index]["icon"],
                          speciality:
                              Doctorspecialitylist[index]["Name"].toString())),
                ),
                SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Popular Doctor",
                        style: TextStyle(
                            color: ColorConstants.headingcolor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("See All"),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemCount: Doctorlist.length,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Doctorscreen(
                                  Drimage: "Assets/Images/Dr.Jimmy.jpg",
                                  speciality: Doctorlist[index]["speciality"],
                                  Drname: Doctorlist[index]["name"],
                                ),
                              ));
                        },
                        child: DoctorCard(
                          Drimage: "Assets/Images/Dr.Jimmy.jpg",
                          speciality: Doctorlist[index]["speciality"],
                          time: Doctorlist[index]["time"],
                          Drname: Doctorlist[index]["name"],
                        )),
                  ),
                ),
                SizedBox(height: 10),
                const Row(
                  children: [
                    Text("Popular Hospitals",
                        style: TextStyle(
                            color: ColorConstants.headingcolor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Text("See All"),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 150,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 20),
                    itemCount: Hospitallist.length,
                    itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Hospitalscreen(
                                  name: Hospitallist[index]["name"],
                                  speciality: Hospitallist[index]["speciality"],
                                  location: Hospitallist[index]["location"],
                                ),
                              ));
                        },
                        child: HospitalCard(
                          name: Hospitallist[index]["name"],
                          speciality: Hospitallist[index]["speciality"],
                          location: Hospitallist[index]["location"],
                        )),
                  ),
                ),
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
