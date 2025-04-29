import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:health_care/Services/Api_envirnoment.dart';
import 'package:health_care/controller/Homescreen_controller.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Doctorscreen/Doctorscreen.dart';
import 'package:health_care/view/Global%20Widget/Appointment_card.dart';
import 'package:health_care/view/Global%20Widget/Doctor_card.dart';
import 'package:health_care/view/Global%20Widget/Doctorspeciality_card.dart';
import 'package:health_care/view/Global%20Widget/Hospital_card.dart';
import 'package:health_care/view/Hospitalscreen/Hospitalscreen.dart';
import 'package:health_care/view/Specialitydetail_screen/Specialitydetail_screen.dart';
import 'package:provider/provider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final List<Map<String, dynamic>> Doctorspecialitylist = [
    {
      "icon": Icons.coronavirus,
      "color": Colors.red,
      "Name": "Pulmonologist",
      "description":
          """A pulmonologist is a physician who specializes in the respiratory system. From the windpipe to the lungs, if your complaint involves the lungs or any part of the respiratory system, a pulmonologist is the doc you want to solve the problem.
Pulmonology is a medical field of study within internal medicine. These doctors go through the same training as an internist. They receive their degree, complete an internal medicine residency, then several years as a fellow focused primarily on pulmonology and often includes critical care and sleep medicine. After that, they have to take and pass specialty exams, and only then are they able to take patients as a Board-Certified pulmonologist.""",
      "image": "Assets/Images/pulmonologist.png",
    },
    {
      "icon": Icons.child_care,
      "color": Colors.blue,
      "Name": "pediatrician",
      "description":
          """A pediatrician is a child's physician who provides not only medical care for children who are acutely or chronically ill but also preventive health services for healthy children. A paediatrician manages physical, mental, and emotional well-being of the children under their care at every stage of development, in both sickness and health.
The aims of the study of paediatrics is to reduce infant and child rate of deaths, control the spread of infectious disease, promote healthy lifestyles for a long disease-free life and help ease the problems of children and adolescents with chronic conditions.""",
      "image": "Assets/Images/pediatrician.jpg",
    },
    {
      "icon": Icons.psychology,
      "color": Colors.yellow,
      "Name": "Mental Health",
      "description":
          """Mental health is a state of mental well-being that enables people to cope with the stresses of life, realize their abilities, learn well and work well, and contribute to their community. It has intrinsic and instrumental value and is integral to our well-being.
At any one time, a diverse set of individual, family, community and structural factors may combine to protect or undermine mental health. Although most people are resilient, people who are exposed to adverse circumstances including poverty, violence, disability and inequality are at higher risk of developing a mental health condition.""",
      "image": "Assets/Images/mentalhealth.webp",
    },
    {
      "icon": Icons.health_and_safety,
      "color": Colors.green,
      "Name": "Dermatology",
      "description":
          """A dermatologist is a medical doctor who has specialised in medicine and then further specialised in diagnosing, managing, and treating conditions that affect the skin, nails, and hair in adults and children.
Dermatologists must have expertise in basic sciences including microbiology, pathology, biochemistry, physics, physiology, pharmacology and endocrinology. They must be familiar with all the other medical specialties because of their consultant work and because skin diseases are often associated with internal medicine conditions.
""",
      "image": "Assets/Images/Dermatology.jpg",
    },
    {
      "icon": Icons.heart_broken_sharp,
      "color": Colors.purple,
      "Name": "Cardiologist",
      "description":
          """A cardiologist is a physician who's an expert in the care of your heart and blood vessels. They can treat or help you prevent a number of cardiovascular problems. They can also specialize in specific areas, like abnormal heart rhythms, heart failure or heart problems you’ve had since birth.
Cardiologists must keep up with the latest advances in how to treat people to provide the best care. At the same time, they need to be experts at listening to how you describe your symptoms and finding the right solution for your issue.
""",
      "image": "Assets/Images/Cardiology.webp",
    },
    {
      "icon": Icons.remove_red_eye,
      "color": Colors.brown,
      "Name": "Ophthalmologist",
      "description":
          """An ophthalmologist is a medical or osteopathic physician who specializes in eye and vision care. Ophthalmologist eye doctors differ from optometrists and opticians in their levels of training and in what they can diagnose and treat.
An ophthalmologist diagnoses and treats all eye diseases, performs eye surgery, and prescribes and fits eyeglasses and contact lenses to correct vision problems. Many ophthalmologists are also involved in scientific research on the causes and cures for eye diseases and vision disorders.
""",
      "image": "Assets/Images/ophthalmologist.jpg",
    },
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
  final List<Map<String, dynamic>> Hospitallist = [
    {
      "image": "Assets/Images/rajagiri.jpg",
      "name": "Rajagiri Hospital",
      "speciality": "Multi Speciality Hospital",
      "location": "Chunangamvely, Ernakulam"
    },
    {
      "image": "Assets/Images/apollo.jpg",
      "name": "Apollo Hospital",
      "speciality": "Multi Speciality Hospital",
      "location": "Cable Junction, Ernakulam"
    },
    {
      "image": "Assets/Images/Astermedcity.jpg",
      "name": "Aster Medcity",
      "speciality": "Multi Speciality Hospital",
      "location": "South Chittoor, Ernakulam"
    },
    {
      "image": "Assets/Images/Amritha.webp",
      "name": "Amritha Hospital",
      "speciality": "Multi Speciality Hospital",
      "location": "Edappally, Ernakulam"
    },
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timestamp) async {
      await Provider.of<Homescreencontroller>(context, listen: false)
          .getHospital();
      await Provider.of<Homescreencontroller>(context, listen: false)
          .getDoctor();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.white,
        appBar: Appbarsection(),
        body: Consumer<Homescreencontroller>(
          builder: (context, value, child) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Textfieldsection(),
                  SizedBox(height: 20),
                  Carouselslidersection(),
                  const SizedBox(height: 10),
                  Column(
                    children: [
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
                          itemCount: value.Doctorlist!.length,
                          itemBuilder: (context, index) => AppointmentCard(
                            doctor: value.Doctorlist![index].name ?? "",
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Specialitysection(),
                  SizedBox(height: 10),
                  Column(
                    children: [
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
                          itemCount: value.Doctorlist!.length,
                          itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Doctorscreen(
                                        about: value.Doctorlist![index].about ??
                                            "",
                                        rating: value.Doctorlist![index].rating
                                            .toString(),
                                        Drimage: value
                                                    .Doctorlist![index].image !=
                                                null
                                            ? "${ApiEnvironment.dev.baseUrl}/${value.Doctorlist![index].image}"
                                            : "https://images.pexels.com/photos/17795207/pexels-photo-17795207/free-photo-of-turtle-on-a-tropical-reef.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                                        speciality: value.Doctorlist![index]
                                                .department ??
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
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
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
                          itemCount: value.Hospitallist!.length,
                          itemBuilder: (context, index) => InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Hospitalscreen(
                                        image: value.Hospitallist![index]
                                                    .image !=
                                                null
                                            ? "${ApiEnvironment.dev.baseUrl}/${value.Hospitallist![index].image}"
                                            : "https://images.pexels.com/photos/17795207/pexels-photo-17795207/free-photo-of-turtle-on-a-tropical-reef.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                                        name: value.Hospitallist![index].name ??
                                            "no data",
                                        speciality: Hospitallist[index]
                                            ["speciality"],
                                        location: value.Hospitallist![index]
                                                .location ??
                                            "no data",
                                        about:
                                            value.Hospitallist![index].about ??
                                                "no data",
                                        rating: value
                                            .Hospitallist![index].rating
                                            .toString(),
                                      ),
                                    ));
                              },
                              child: HospitalCard(
                                image: value.Hospitallist![index].image != null
                                    ? "${ApiEnvironment.dev.baseUrl}/${value.Hospitallist![index].image}"
                                    : "https://images.pexels.com/photos/17795207/pexels-photo-17795207/free-photo-of-turtle-on-a-tropical-reef.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
                                name: value.Hospitallist![index].name ??
                                    "no data",
                                speciality: Hospitallist[index]["speciality"],
                                location: value.Hospitallist![index].location ??
                                    "no data",
                                rating: value.Hospitallist![index].rating
                                    .toString(),
                              )),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }

  Column Specialitysection() {
    return Column(
      children: [
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
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SpecialitydetailScreen(
                              image: Doctorspecialitylist[index]["image"]
                                  .toString(),
                              Name: Doctorspecialitylist[index]["Name"]
                                  .toString(),
                              description: Doctorspecialitylist[index]
                                      ["description"]
                                  .toString(),
                            ),
                          ));
                    },
                    child: Doctorspecialitycard(
                        color: Doctorspecialitylist[index]["color"],
                        icon: Doctorspecialitylist[index]["icon"],
                        speciality:
                            Doctorspecialitylist[index]["Name"].toString()),
                  )),
        ),
      ],
    );
  }

  CarouselSlider Carouselslidersection() {
    return CarouselSlider(
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
                  border: Border.all(color: ColorConstants.maincolor)),
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
        ]);
  }

  TextField Textfieldsection() {
    return TextField(
      decoration: InputDecoration(
        labelText: "Search Doctors",
        labelStyle: TextStyle(color: ColorConstants.maincolor),
        hintText: "Doctors",
        suffixIcon: Icon(Icons.search),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstants.maincolor, width: 2)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstants.maincolor, width: 1)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: ColorConstants.red, width: 1)),
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
