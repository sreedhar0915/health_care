import 'package:flutter/material.dart';
import 'package:health_care/main.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/OTPscreen/OTPscreen.dart';

class Forgetpasswordscreen extends StatefulWidget {
  const Forgetpasswordscreen({super.key});

  @override
  State<Forgetpasswordscreen> createState() => _ForgetpasswordscreenState();
}

class _ForgetpasswordscreenState extends State<Forgetpasswordscreen> {
  TextEditingController emailcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.maincolor,
      appBar: Appbarsection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
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
                      image: AssetImage("Assets/Images/forgetpassword.png"),
                      fit: BoxFit.contain),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 410,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstants.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "FORGOT PASSWORD",
                        style: TextStyle(
                          color: ColorConstants.maincolor,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Enter Your Email Address",
                        style: TextStyle(
                          color: ColorConstants.maincolor,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15),
                                      bottomLeft: Radius.circular(15)),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        'Assets/Images/backgroud.jpg'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                child: TextFormField(
                                  controller: emailcontroller,
                                  decoration: InputDecoration(
                                    labelText: "Enter Email",
                                    hintText: "Emailaddress",
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15)),
                                        borderSide: BorderSide(
                                            color: ColorConstants.black,
                                            width: 1)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15)),
                                        borderSide: BorderSide(
                                            color: ColorConstants.maincolor,
                                            width: 1)),
                                    errorBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(15),
                                            bottomLeft: Radius.circular(15)),
                                        borderSide: BorderSide(
                                            color: ColorConstants.red,
                                            width: 1)),
                                  ),
                                  validator: (value) {
                                    if (value == null ||
                                        !emailcontroller.text
                                            .contains("@gmail.com")) {
                                      return "Please enter a valid email address";
                                    }
                                    return null;
                                  },
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      InkWell(
                        onTap: () {
                          if (_formKey.currentState!.validate()) {
                            Email = emailcontroller.text;

                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Otpscreen(),
                                ));
                          }
                          ;
                        },
                        child: Container(
                          height: 50,
                          width: 400,
                          decoration: BoxDecoration(
                              color: ColorConstants.Buttoncolor,
                              border: Border.all(color: Colors.black),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              image: DecorationImage(
                                  image: AssetImage(
                                      "Assets/Images/background button.jpg"),
                                  fit: BoxFit.cover)),
                          child: const Center(
                              child: Text(
                            "SEND OTP",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                      SizedBox(height: 30),
                      Divider(color: ColorConstants.black),
                      SizedBox(height: 5),
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
