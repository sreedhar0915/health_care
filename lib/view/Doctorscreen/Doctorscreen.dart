import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class Doctorscreen extends StatefulWidget {
  final String Drname;
  final String speciality;
  final String Drimage;
  final String rating;
  final String about;

  const Doctorscreen({
    super.key,
    required this.Drname,
    required this.about,
    required this.speciality,
    required this.Drimage,
    required this.rating,
  });

  @override
  State<Doctorscreen> createState() => _DoctorscreenState();
}

class _DoctorscreenState extends State<Doctorscreen> {
  final List<String> visitHours = [
    '11:00 AM',
    '12:00 PM',
    '01:00 PM',
    '02:00 PM',
  ];
  String? selectedHour;
  final List<Map<String, dynamic>> categorylist = [
    {
      "icon": Icons.person_add_alt_rounded,
      "count": "150+",
      "category": "patients"
    },
    {"icon": Icons.calendar_month, "count": "3+", "category": "Years"},
    {"icon": Icons.star, "count": "4.8", "category": "Rating"},
    {"icon": Icons.message, "count": "90+", "category": "reviews"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbarsection(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Stack(children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: ColorConstants.maincolor,
                      borderRadius: BorderRadius.circular(15)),
                  child: Image.network(
                    widget.Drimage,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: ColorConstants.maincolor,
                    child: Center(
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: ColorConstants.red,
                          )),
                    ),
                  ),
                )
              ]),
              Row(
                children: [
                  Text(
                    widget.Drname,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(
                    Icons.star,
                    color: ColorConstants.Yellow,
                  ),
                  SizedBox(width: 5),
                  Text("${widget.rating}/5",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  SizedBox(width: 2),
                  Text("(524 views)"),
                ],
              ),
              Text(widget.speciality),
              SizedBox(height: 10),
              Row(
                  children: List.generate(
                categorylist.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 85,
                      width: 75,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Center(
                            child: Column(
                          children: [
                            Icon(categorylist[index]["icon"]),
                            SizedBox(height: 5),
                            Text(categorylist[index]["count"]),
                            SizedBox(height: 5),
                            Text(categorylist[index]["category"]),
                          ],
                        )),
                      ),
                    ),
                  ),
                ),
              )),
              SizedBox(height: 10),
              Text(
                "About",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 1),
                child: Text(
                  widget.about,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: ColorConstants.grey),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Visit Hours",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: visitHours.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedHour = visitHours[index];
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        child: _timeSlot(
                          visitHours[index],
                          visitHours[index] == selectedHour,
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
              InkWell(
                onTap: () {
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //       builder: (context) => ,
                  //     ));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorConstants.Buttoncolor,
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text(
                    "Book Appointment",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                ),
              ),
              SizedBox(height: 10),
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

  Widget _timeSlot(String time, bool isSelected) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: isSelected ? ColorConstants.Buttoncolor : Colors.grey[200],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        time,
        style: TextStyle(
          fontSize: 14,
          color: isSelected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
