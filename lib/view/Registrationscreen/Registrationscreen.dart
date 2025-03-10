import 'package:flutter/material.dart';
import 'package:health_care/main.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Loginscreen/Loginscreen.dart';

class Registrationscreen extends StatefulWidget {
  const Registrationscreen({super.key});

  @override
  State<Registrationscreen> createState() => _RegistrationscreenState();
}

class _RegistrationscreenState extends State<Registrationscreen> {
  TextEditingController Namecontroller = TextEditingController();
  TextEditingController Phonenumbercontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController DOBcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  TextEditingController passwordconfirmcontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  dynamic? gender;
  bool ispasswoedvisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      appBar: Appbarsection(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "REGISTRATION",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30),
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
                            image: AssetImage('Assets/Images/backgroud.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Enter Name",
                            hintText: "Name",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.maincolor, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.red, width: 1)),
                          ),
                          validator: (value) {
                            if (Namecontroller.text.length < 2) {
                              return "enter valid name";
                            } else if (value!.isEmpty) {
                              return "enter password";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage('Assets/Images/backgroud.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: TextFormField(
                          controller: Phonenumbercontroller,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            labelText: "Enter Phonenumber",
                            hintText: "Phonenumber",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.red, width: 1)),
                          ),
                          validator: (value) {
                            if (Phonenumbercontroller.text.length < 10) {
                              return "enter valid phone number";
                            } else if (value!.isEmpty) {
                              return "enter password";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 225,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15)),
                              image: DecorationImage(
                                image:
                                    AssetImage('Assets/Images/backgroud.jpg'),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: TextFormField(
                              controller: DOBcontroller,
                              readOnly: true,
                              style: TextStyle(color: Colors.blue),
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 10),
                                hintText: "Date Of Birth",
                                labelText: "Enter Date Of Birth",
                                hintStyle: TextStyle(
                                    color: ColorConstants.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    borderSide: BorderSide(
                                      color: ColorConstants.black,
                                      width: 1,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(15),
                                        bottomLeft: Radius.circular(15)),
                                    borderSide: const BorderSide(
                                      color: ColorConstants.maincolor,
                                      width: 1,
                                    )),
                                suffixIcon: IconButton(
                                    onPressed: () async {
                                      var selecteddate = await showDatePicker(
                                          context: context,
                                          firstDate: DateTime.now(),
                                          lastDate: DateTime(2028));
                                    },
                                    icon: Icon(Icons.calendar_month)),
                              ),
                              // validator: (value) {
                              //   if (value!.isEmpty) {
                              //     return "enter Date Of Birth";
                              //   } else {
                              //     return null;
                              //   }
                              // },
                            ),
                          ),
                          DropdownButton(
                              hint: Text(
                                "Gender",
                                style: TextStyle(color: ColorConstants.black),
                              ),
                              borderRadius: BorderRadius.circular(10),
                              value: gender,
                              items: [
                                DropdownMenuItem(
                                  child: Text("Male"),
                                  value: "Male",
                                ),
                                DropdownMenuItem(
                                  child: Text("Female"),
                                  value: "Female",
                                ),
                                DropdownMenuItem(
                                  child: Text("Others"),
                                  value: "Others",
                                ),
                              ],
                              onChanged: (value) {
                                gender = value;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage('Assets/Images/backgroud.jpg'),
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
                                    color: ColorConstants.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.maincolor, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.red, width: 1)),
                          ),
                          validator: (value) {
                            if (value == null ||
                                !emailcontroller.text.contains("@gmail.com")) {
                              return "Please enter a valid email address";
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage('Assets/Images/backgroud.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: TextFormField(
                          controller: Passwordcontroller,
                          obscureText: !ispasswoedvisible,
                          decoration: InputDecoration(
                            labelText: "Enter Password",
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.maincolor, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.red, width: 1)),
                          ),
                          validator: (value) {
                            if (Passwordcontroller.text.length < 5) {
                              return "password must contain atleast 5 characters";
                            } else if (value!.isEmpty) {
                              return "enter password";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          image: DecorationImage(
                            image: AssetImage('Assets/Images/backgroud.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: TextFormField(
                          controller: passwordconfirmcontroller,
                          obscureText: !ispasswoedvisible,
                          decoration: InputDecoration(
                            labelText: "Enter confirm Password",
                            hintText: "confirm Password",
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.black, width: 1)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.maincolor, width: 1)),
                            errorBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(15),
                                    bottomLeft: Radius.circular(15)),
                                borderSide: BorderSide(
                                    color: ColorConstants.red, width: 1)),
                          ),
                          validator: (value) {
                            if (passwordconfirmcontroller.text.isEmpty) {
                              return "confirm password";
                            } else if (passwordconfirmcontroller.text !=
                                Passwordcontroller.text) {
                              return "password do not match";
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Checkbox(
                        value: ispasswoedvisible,
                        onChanged: (bool? value) {
                          setState(() {
                            ispasswoedvisible = value!;
                          });
                        }),
                    Text("Show Password"),
                  ],
                ),
                SizedBox(height: 30),
                InkWell(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      Email = emailcontroller.text;
                      password = Passwordcontroller.text;
                      name = Namecontroller.text;
                      phoneno = Phonenumbercontroller.text;
                      DOB = DOBcontroller.text;
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Loginscreen(),
                          ));
                    }
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
                    child: Center(
                        child: Text(
                      "Register",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
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
