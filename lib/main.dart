import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:health_care/controller/Homescreen_controller.dart';
import 'package:health_care/controller/Registration_controller.dart';
import 'package:health_care/controller/loginscreen_controller.dart';

import 'package:health_care/view/Splashscreen/Splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => RegistrationController(),
    ),
    ChangeNotifierProvider(
      create: (context) => LoginScreenController(),
    ),
    ChangeNotifierProvider(
      create: (context) => Homescreencontroller(),
    ),
  ], child: Myapp()));
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorObservers: [FlutterSmartDialog.observer],
      builder: FlutterSmartDialog.init(),
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}

// String name = "";
// String phoneno = "";
// String DOB = "";
String Email = "";
// String password = "";
