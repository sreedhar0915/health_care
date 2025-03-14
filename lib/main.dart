import 'package:flutter/material.dart';
import 'package:health_care/controller/Profilescreen_controller.dart';
import 'package:health_care/view/Splashscreen/Splashscreen.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ProfilescreenController.initDb();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => ProfilescreenController(),
    ),
  ], child: Myapp()));
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
