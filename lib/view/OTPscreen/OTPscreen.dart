import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:health_care/main.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Bottomnavibarscreen/Bottomnavibarscreen.dart';
import 'package:health_care/view/Loginscreen/Loginscreen.dart';

class Otpscreen extends StatefulWidget {
  const Otpscreen({super.key});

  @override
  State<Otpscreen> createState() => _OtpscreenState();
}

class _OtpscreenState extends State<Otpscreen> {
  late String otp;
  late Timer timer;
  int remainingtime = 50;
  int currentindex = 0;
  int rightanswercount = 0;
  int? selectedanswerindex;
  List categorylist = [];

  @override
  void initState() {
    super.initState();

    starttimer(); // Start the timer after item is initialized
  }

  void starttimer() {
    remainingtime = 50;
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (remainingtime > 0) {
          remainingtime--;
        } else {
          timer.cancel();
          handlingnextscreen();
        }
      });
    });
  }

  void handlingnextscreen() {
    // if (otp == "111111") {
    //   Navigator.pushReplacement(
    //       context,
    //       MaterialPageRoute(
    //         builder: (context) => Bottomnavibarscreen(),
    //       ));
    // } else
    if (currentindex < categorylist.length - 1) {
      setState(() {
        currentindex++;
        selectedanswerindex = null; // Reset selected answer
        starttimer(); // Restart the timer for the next question
      });
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Loginscreen()));
    }
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: Appbarsection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstants.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  image: DecorationImage(
                      image: AssetImage("Assets/Images/otp.png"),
                      fit: BoxFit.contain),
                ),
              ),
              // Title
              Text(
                "OTP Verification",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 20),

              // Subtitle
              Text(
                "Enter the 6-digit OTP sent to your email: $Email",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 30),
              OtpTextField(
                  numberOfFields: 6,
                  enabledBorderColor: Colors.black54,
                  borderColor: Colors.blue,
                  showFieldAsBox: true,
                  fieldWidth: 45,
                  onSubmit: (otp) => Navigator.pushReplacement),
              const SizedBox(height: 30),

              // Countdown Timer
              Text(
                "Back in $remainingtime seconds",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Bottomnavibarscreen(),
                      ));
                },
                child: Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: ColorConstants.Buttoncolor,
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                      image: DecorationImage(
                          image:
                              AssetImage("Assets/Images/background button.jpg"),
                          fit: BoxFit.cover)),
                  child: const Center(
                      child: Text(
                    "Submit",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              const SizedBox(height: 10),
              // Resend OTP Button
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConstants.grey,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: Text(
                    "Resend OTP",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
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
