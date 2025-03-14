import 'package:flutter/material.dart';
import 'package:health_care/controller/Profilescreen_controller.dart';
import 'package:health_care/main.dart';
import 'package:health_care/utilis/Color_Constant.dart';
import 'package:health_care/view/Global%20Widget/Personinformationcard.dart';
import 'package:health_care/view/Startscreen/Startscreen.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController Namecontroller = TextEditingController();
  TextEditingController Phonenumbercontroller = TextEditingController();
  TextEditingController DOBcontroller = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  dynamic? gender;
  bool ispasswoedvisible = false;
  List<String> informations = [
    "My Prescription",
    "My Medication",
    "Emergency Contact",
    "My Bookings",
    "My Reminders",
  ];

  String? imagepath;
  //Uint8List? imagebytes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Appbarsection(),
        body: Consumer<ProfilescreenController>(
          builder: (context, value, child) => SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  CircleAvatar(
                      radius: 50,
                      backgroundColor: ColorConstants.maincolor,
                      //   child:  imagepath != null
                      //  ? Image.file(File(imagepath!))
                      //  :
                      child: IconButton(
                          onPressed: () async {
                            final ImagePicker picker = ImagePicker();
                            final XFile? image = await picker.pickImage(
                                source: ImageSource.gallery);
                          },
                          icon: Icon(
                            Icons.person,
                            size: 50,
                          ))),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Name :",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.headingcolor),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "${name.toString()}",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.headingcolor),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Phone Number :",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.headingcolor),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "$phoneno",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.headingcolor),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Date Of Birth :",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.headingcolor),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "$DOB",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.headingcolor),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        "Email ID :",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.headingcolor),
                      ),
                      SizedBox(width: 5),
                      Text(
                        "$Email",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: ColorConstants.headingcolor),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () async {
                      // await value.updatprofile(
                      //       value.ProfileList[index]["name"],
                      //       value.ProfileList[index]["duedate"],
                      //       value.ProfileList[index]["duetime"],
                      //       value.ProfileList[index]["id"]);
                      showModalBottomSheet(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                              height: 500,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: ColorConstants.maincolor,
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20))),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Column(
                                  children: [
                                    Form(
                                      key: _formKey,
                                      child: Column(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(15),
                                                  bottomLeft:
                                                      Radius.circular(15)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'Assets/Images/backgroud.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: TextFormField(
                                              decoration: InputDecoration(
                                                labelText: "Enter Name",
                                                hintText: "Name",
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topRight:
                                                                Radius.circular(
                                                                    15),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    borderSide:
                                                        BorderSide(
                                                            color:
                                                                ColorConstants
                                                                    .black,
                                                            width: 1)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(15),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    borderSide: BorderSide(
                                                        color: ColorConstants
                                                            .maincolor,
                                                        width: 1)),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(15),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    borderSide: BorderSide(
                                                        color:
                                                            ColorConstants.red,
                                                        width: 1)),
                                              ),
                                              validator: (value) {
                                                if (Namecontroller.text.length >
                                                    3) {
                                                  return "enter valid name";
                                                } else if (value!.isEmpty) {
                                                  return "enter password";
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topRight: Radius.circular(15),
                                                  bottomLeft:
                                                      Radius.circular(15)),
                                              image: DecorationImage(
                                                image: AssetImage(
                                                    'Assets/Images/backgroud.jpg'),
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            child: TextFormField(
                                              controller: Phonenumbercontroller,
                                              keyboardType:
                                                  TextInputType.number,
                                              decoration: InputDecoration(
                                                labelText: "Enter Phonenumber",
                                                hintText: "Phonenumber",
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius
                                                        .only(
                                                            topRight:
                                                                Radius.circular(
                                                                    15),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    borderSide:
                                                        BorderSide(
                                                            color:
                                                                ColorConstants
                                                                    .black,
                                                            width: 1)),
                                                focusedBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(15),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    borderSide: BorderSide(
                                                        color: Colors.blue,
                                                        width: 1)),
                                                errorBorder: OutlineInputBorder(
                                                    borderRadius:
                                                        BorderRadius.only(
                                                            topRight: Radius
                                                                .circular(15),
                                                            bottomLeft:
                                                                Radius.circular(
                                                                    15)),
                                                    borderSide: BorderSide(
                                                        color:
                                                            ColorConstants.red,
                                                        width: 1)),
                                              ),
                                              validator: (value) {
                                                if (Phonenumbercontroller
                                                        .text.length <
                                                    10) {
                                                  return "enter valid phone number";
                                                } else if (value!.isEmpty) {
                                                  return "enter password";
                                                } else {
                                                  return null;
                                                }
                                              },
                                            ),
                                          ),
                                          SizedBox(height: 30),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 50,
                                                width: 225,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topRight:
                                                              Radius.circular(
                                                                  15),
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  15)),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                        'Assets/Images/backgroud.jpg'),
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                child: TextFormField(
                                                  controller: DOBcontroller,
                                                  readOnly: true,
                                                  style: TextStyle(
                                                      color: Colors.blue),
                                                  decoration: InputDecoration(
                                                    contentPadding:
                                                        const EdgeInsets
                                                            .symmetric(
                                                            horizontal: 15,
                                                            vertical: 10),
                                                    hintText: "Date Of Birth",
                                                    labelText:
                                                        "Enter Date Of Birth",
                                                    hintStyle: TextStyle(
                                                        color: ColorConstants
                                                            .black,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                            borderRadius: BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        15),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        15)),
                                                            borderSide:
                                                                BorderSide(
                                                              color:
                                                                  ColorConstants
                                                                      .black,
                                                              width: 1,
                                                            )),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                            borderRadius: BorderRadius.only(
                                                                topRight: Radius
                                                                    .circular(
                                                                        15),
                                                                bottomLeft: Radius
                                                                    .circular(
                                                                        15)),
                                                            borderSide:
                                                                const BorderSide(
                                                              color:
                                                                  ColorConstants
                                                                      .maincolor,
                                                              width: 1,
                                                            )),
                                                    suffixIcon: IconButton(
                                                        onPressed: () async {
                                                          var selecteddate =
                                                              await showDatePicker(
                                                                  context:
                                                                      context,
                                                                  firstDate:
                                                                      DateTime
                                                                          .now(),
                                                                  lastDate:
                                                                      DateTime(
                                                                          2028));
                                                        },
                                                        icon: Icon(Icons
                                                            .calendar_month)),
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
                                                    style: TextStyle(
                                                        color: ColorConstants
                                                            .black),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(10),
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
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    InkWell(
                                      onTap: () {
                                        if (_formKey.currentState!.validate()) {
                                          name = Namecontroller.text;
                                          phoneno = Phonenumbercontroller.text;
                                          // DOB = DOBcontroller.text;
                                        }
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        height: 50,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            color: ColorConstants.Buttoncolor,
                                            border:
                                                Border.all(color: Colors.black),
                                            borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(15),
                                                bottomLeft:
                                                    Radius.circular(15)),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "Assets/Images/background button.jpg"),
                                                fit: BoxFit.cover)),
                                        child: Center(
                                            child: Text(
                                          "update",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        )),
                                      ),
                                    ),
                                    SizedBox(height: 30),
                                    Divider(color: ColorConstants.black),
                                    SizedBox(height: 5),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
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
                              ));
                        },
                      );
                    },
                    child: Container(
                      height: 50,
                      width: 400,
                      decoration: BoxDecoration(
                          color: ColorConstants.maincolor,
                          border: Border.all(color: ColorConstants.black),
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15),
                              bottomLeft: Radius.circular(15)),
                          image: DecorationImage(
                              image: AssetImage("Assets/Images/backgroud.jpg"),
                              fit: BoxFit.cover)),
                      child: Center(
                          child: Text(
                        "Update",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )),
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: List.generate(
                      informations.length,
                      (index) => InkWell(
                        child: PersonInformationCard(
                            information: informations[index].toString()),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Startscreen(),
                          ));
                    },
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: ColorConstants.red)),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Text(
                              "Delete Account",
                              style: TextStyle(
                                  color: ColorConstants.red,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Icon(
                              Icons.exit_to_app_outlined,
                              color: ColorConstants.red,
                            )
                          ],
                        ),
                      )),
                    ),
                  )
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
