import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Homescreen/Homescreen.dart';
import 'package:health_care/view/Notificationscreen/Notificationscreen.dart';
import 'package:health_care/view/Profilescreen/Profilescreen.dart';
import 'package:health_care/view/Sosscreen/Sosscreen.dart';

class Bottomnavibarscreen extends StatefulWidget {
  const Bottomnavibarscreen({super.key});

  @override
  State<Bottomnavibarscreen> createState() => _BottomnavibarscreenState();
}

class _BottomnavibarscreenState extends State<Bottomnavibarscreen> {
  int selecttab = 0;

  final List<Widget> screens = [
    Homescreen(),
    Notificationscreen(),
    Sosscreen(),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[selecttab],
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      onTap: (int index) {
        setState(() {
          selecttab = index;
        });
      },
      selectedItemColor: ColorConstants.maincolor,
      currentIndex: selecttab,
      unselectedItemColor: ColorConstants.black,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.home),
          icon: Icon(Icons.home_outlined),
          label: "Home",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.notifications),
          icon: Icon(Icons.notifications_outlined),
          label: "Notification",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.emergency),
          icon: Icon(Icons.emergency_outlined),
          label: "SOS",
        ),
        BottomNavigationBarItem(
          activeIcon: Icon(Icons.person),
          icon: Icon(Icons.person_outlined),
          label: "You",
        ),
      ],
    );
  }
}
