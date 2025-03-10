import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class Doctorscreen extends StatelessWidget {
  const Doctorscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarsection(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Stack(children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstants.maincolor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.asset(
                    "Assets/Images/Dr.Jimmy.jpg",
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
              Row(
                children: [
                  Text(
                    "Dr.Jimmy Jose",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: ColorConstants.Yellow,
                  ),
                  SizedBox(width: 5),
                  Text("4.8", style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 2),
                  Text("(524 views)"),
                ],
              ),
              Text("pulmonologist"),
              SizedBox(height: 10),
              Row(
                  children: List.generate(
                4,
                (index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 85,
                      width: 75,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                            child: Column(
                          children: [
                            Icon(Icons.person_add_alt_sharp),
                            SizedBox(height: 5),
                            Text(
                              "200+",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text("Patients"),
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
              )),
              SizedBox(height: 10),
              Text(
                "About",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Text(
                  "Dr. Jimmy Jose is a highly qualified medical professional with an MBBS degree and a postgraduate degree in MD. He has several years of experience working in the medical field and is currently serving as the Chief Physician in a hospital or healthcare organization.",
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: ColorConstants.grey),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Visit Hours",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                  children: List.generate(
                3,
                (index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xFFADDAEB),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: ColorConstants.black)),
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(child: Text("12:00 am")),
                      ),
                    ),
                  ),
                ),
              )),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ,
                  //     ));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstants.Buttoncolor,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "Book Appointment",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(height: 10),
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
