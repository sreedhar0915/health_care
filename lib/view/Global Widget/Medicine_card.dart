import 'package:flutter/material.dart';
import 'package:health_care/utilis/Color_Constant.dart';

class MedicineCard extends StatefulWidget {
  final String Doctor;

  const MedicineCard({super.key, required this.Doctor});

  @override
  State<MedicineCard> createState() => _MedicineCardState();
}

class _MedicineCardState extends State<MedicineCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 350,
      decoration: BoxDecoration(
          color: ColorConstants.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorConstants.black),
          boxShadow: const [
            BoxShadow(
                spreadRadius: 2,
                blurRadius: 5,
                color: ColorConstants.grey,
                offset: Offset(0, 3))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Prescribed by ${widget.Doctor}",
              style: TextStyle(
                  color: ColorConstants.headingcolor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            Table(
              border: TableBorder.all(),
              columnWidths: {
                0: FlexColumnWidth(2),
                1: FlexColumnWidth(1),
                2: FlexColumnWidth(1),
              },
              children: [
                buildRow(['Med', 'Dose', 'Time'], isHeader: true),
                buildRow(['Paracetamol', '500mg', '8:00 AM']),
                buildRow(['Ibuprofen', '200mg', '12:00 PM']),
                buildRow(['Aspirin', '300mg', '6:00 PM']),
                buildRow(['Vitamin C', '1000mg', '9:00 PM']),
              ],
            ),
          ],
        ),
      ),
    );
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) {
    return TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            cell,
            style: TextStyle(
              fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
        );
      }).toList(),
    );
  }
}
