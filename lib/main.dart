import 'package:flutter/material.dart';
import 'package:health_care/view/Splashscreen/Splashscreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}

String name = "";
String phoneno = "";
String DOB = "";
String Email = "";
String password = "";
