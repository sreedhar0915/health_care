import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:health_care/main.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Loginscreen/Loginscreen.dart';
import 'package:health_care/view/Registrationscreen/Registrationscreen.dart';

class Startscreen extends StatelessWidget {
  const Startscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: Appbarsection(),
      body: Column(
        children: [
          SizedBox(height: 10),
          CarouselSlider(
              options: CarouselOptions(
                height: 250.0,
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
                    width: double.infinity,
                    child: Image.asset(
                      "Assets/Images/cs1.jpg",
                      fit: BoxFit.cover,
                    )),
                Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      "Assets/Images/cs2.jpg",
                      fit: BoxFit.cover,
                    )),
                Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      "Assets/Images/cs3.jpg",
                      fit: BoxFit.cover,
                    )),
                Container(
                    height: 200,
                    width: double.infinity,
                    child: Image.asset(
                      "Assets/Images/cs4.webp",
                      fit: BoxFit.cover,
                    )),
              ]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: ColorConstants.maincolor,
                  border: Border.all(color: ColorConstants.black),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                  image: DecorationImage(
                      image: AssetImage("Assets/Images/backgroud.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  Text(
                    "HEALTHCARE",
                    style: TextStyle(
                      color: ColorConstants.headingcolor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    child: Text(
                      "Healthcare is the practice of preventing, diagnosing, and treating illnesses, injuries, and other physical and mental health issues. It can also refer to the organizations and professionals that provide these services. ",
                      maxLines: 8,
                      style: TextStyle(
                        color: ColorConstants.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Registrationscreen(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: ColorConstants.maincolor,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("Assets/Images/backgroud.jpg"),
                            fit: BoxFit.cover)),
                    child: Center(
                        child: Text(
                      "REGISTRATION",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Loginscreen(),
                        ));
                  },
                  child: Container(
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: ColorConstants.maincolor,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage("Assets/Images/backgroud.jpg"),
                            fit: BoxFit.cover)),
                    child: Center(
                        child: Text(
                      "LOGIN",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Divider(color: Colors.black),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: Text("Conditions of use",
                    style: TextStyle(
                      color: ColorConstants.black,
                    )),
              ),
              SizedBox(width: 15),
              InkWell(
                onTap: () {},
                child: Text("Privacy Notice",
                    style: TextStyle(
                      color: ColorConstants.black,
                    )),
              ),
              SizedBox(width: 15),
              InkWell(
                onTap: () {},
                child: Text("Help",
                    style: TextStyle(
                      color: ColorConstants.black,
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar Appbarsection() {
    return AppBar(
      backgroundColor: ColorConstants.white,
      foregroundColor: ColorConstants.white,
      title: Center(child: Image.asset("Assets/Images/title.jpg")),
    );
  }
}
