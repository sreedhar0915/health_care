import 'package:flutter/material.dart';
import 'package:health_care/Services/Api_envirnoment.dart';
import 'package:health_care/controller/Homescreen_controller.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/utilis/Snackbar.dart';
import 'package:health_care/view/Doctorscreen/Doctorscreen.dart';
import 'package:health_care/view/Global%20Widget/Doctor_card.dart';
import 'package:provider/provider.dart';

class Hospitalscreen extends StatelessWidget {
  final String image;
  final String name;
  final String speciality;
  final String location;
  final String about;
  final String rating;
  Hospitalscreen({
    super.key,
    required this.name,
    required this.speciality,
    required this.location,
    required this.image,
    required this.about,
    required this.rating,
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
      "image": "Assets/Images/Dr.Jimmy.jpg",
      "name": "Dr.Jimmy",
      "speciality": "Pulmonologist",
      "time": "12:00 am to 02:00 pm"
    },
    {
      "image": "Assets/Images/Dr.John.jpg",
      "name": "Dr.John",
      "speciality": "Cardiologist",
      "time": "11:00 am to 03:00 pm"
    },
    {
      "image": "Assets/Images/Dr.Jimmy.jpg",
      "name": "Dr.Ishak",
      "speciality": "Dermatology",
      "time": "09:00 am to 01:00 pm"
    },
    {
      "image": "Assets/Images/willam.jpeg",
      "name": "Dr.willam",
      "speciality": "Ophthalmologist",
      "time": "08:00 am to 12:00 pm"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarsection(),
      body: Consumer<Homescreencontroller>(
        builder: (context, value, child) => SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  child: Image.network(
                    image,
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
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
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
                        Text("$rating/5",
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 2),
                        Text("(524 views)"),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Facilities",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                                child:
                                    Center(child: Text(Facilitieslist[index])),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "About",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      child: Text(
                        "$about",
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
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
                        itemCount: value.Doctorlist!.length,
                        itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Doctorscreen(
                                      about:
                                          value.Doctorlist![index].about ?? "",
                                      rating: value.Doctorlist![index].rating
                                          .toString(),
                                      Drimage: value.Doctorlist![index].image !=
                                              null
                                          ? "${ApiEnvironment.dev.baseUrl}/${value.Doctorlist![index].image}"
                                          : "https://images.pexels.com/photos/17795207/pexels-photo-17795207/free-photo-of-turtle-on-a-tropical-reef.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                                      speciality:
                                          value.Doctorlist![index].department ??
                                              "",
                                      Drname:
                                          value.Doctorlist![index].name ?? "",
                                    ),
                                  ));
                            },
                            child: DoctorCard(
                              rating:
                                  value.Doctorlist![index].rating.toString(),
                              Drimage: value.Doctorlist![index].image != null
                                  ? "${ApiEnvironment.dev.baseUrl}/${value.Doctorlist![index].image}"
                                  : "https://images.pexels.com/photos/17795207/pexels-photo-17795207/free-photo-of-turtle-on-a-tropical-reef.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                              speciality:
                                  value.Doctorlist![index].department ?? "",
                              time: Doctorlist[index]["time"],
                              Drname: value.Doctorlist![index].name ?? "",
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
