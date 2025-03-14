import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/utilis/Snackbar.dart';
import 'package:health_care/view/Doctorscreen/Doctorscreen.dart';
import 'package:health_care/view/Global%20Widget/Doctor_card.dart';

class Hospitalscreen extends StatelessWidget {
  final String name;
  final String speciality;
  final String location;
  Hospitalscreen({
    super.key,
    required this.name,
    required this.speciality,
    required this.location,
  });

  List<String> Facilitieslist = [
    "Emergency care",
    "ICU",
    "Cardiology",
    "Surgery",
    "Neurology",
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarsection(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 250,
                width: double.infinity,
                child: Image.asset(
                  "Assets/Images/rajagiri.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: ColorConstants.maincolor,
                  child: Center(
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.favorite_border,
                          color: ColorConstants.red,
                        )),
                  ),
                ),
              )
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text(speciality),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(Icons.location_on_outlined),
                      SizedBox(width: 5),
                      Text(location),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: ColorConstants.Yellow,
                      ),
                      SizedBox(width: 5),
                      Text("4.8",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 2),
                      Text("(524 views)"),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Facilities",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 60,
                    child: ListView.separated(
                      shrinkWrap: true,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) =>
                          const SizedBox(width: 20),
                      itemCount: Facilitieslist.length,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.all(5),
                        child: InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                                color: const Color(0xFFADDAEB),
                                borderRadius: BorderRadius.circular(20),
                                border:
                                    Border.all(color: ColorConstants.black)),
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Center(child: Text(Facilitieslist[index])),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "About",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: Text(
                      "In the short span of its existence, Rajagiri Hospital has created its niche on the map of quality healthcare delivery in South India by touching nearly 2 million lives. Having earned the trust and loyalty of patients through the compassion of its caregivers and high-precision medical technology, the institution has emerged as the leading quaternary care facility in the region. ",
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: ColorConstants.grey),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Our Doctors",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                ],
              ),
            )
          ],
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
