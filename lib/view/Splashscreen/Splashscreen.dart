import 'package:flutter/material.dart';
import 'package:health_care/view/Doctorscreen/Doctorscreen.dart';
import 'package:health_care/view/Hospitalscreen/Hospitalscreen.dart';
import 'package:health_care/view/Startscreen/Startscreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Startscreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Container(
                height: 800,
                width: 300,
                child: Image(
                  image: AssetImage("Assets/Images/healthcarelogo.png"),
                ))));
  }
}
