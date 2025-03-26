import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';  
import 'package:url_launcher/url_launcher.dart';

class Sosscreen extends StatefulWidget {
  const Sosscreen({super.key});

  @override
  State<Sosscreen> createState() => _SosscreenState();
}

class _SosscreenState extends State<Sosscreen> {
  Future<void> callPhone(String phoneNumber) async {
    final Uri phoneUrl = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(phoneUrl)) {
      await launchUrl(phoneUrl);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  // Future<void> _getCurrentLocation() async {
  //   bool serviceEnabled;
  //   LocationPermission permission;

  //   serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return;
  //   }

  //   // Request permission
  //   permission = await Geolocator.checkPermission();
  //   if (permission == LocationPermission.denied) {
  //     permission = await Geolocator.requestPermission();
  //     if (permission == LocationPermission.denied) {
  //       return;
  //     }
  //   }

  //   if (permission == LocationPermission.deniedForever) {
  //     return;
  //   }

  //   // Get current position
  //   Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high);

  //   String locationUrl =
  //       "https://www.google.com/maps/search/?api=1&query=${position.latitude},${position.longitude}";

  //   // Share location
  //   Share.share("Here is my location: $locationUrl");
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConstants.maincolor,
        appBar: Appbarsection(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      callPhone('102');
                    },
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: ColorConstants.red,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                          child: Text(
                        "Emergency Call",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {
                      callPhone('101');
                    },
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: ColorConstants.red,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: ColorConstants.grey,
                            blurRadius: BorderSide.strokeAlignCenter,
                          )
                        ],
                      ),
                      child: Center(
                          child: Text(
                        "Call Ambulance",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  SizedBox(height: 30),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                        color: ColorConstants.red,
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Center(
                          child: Text(
                            "Share Current Location",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
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
