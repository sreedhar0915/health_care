import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:health_care/Model/hospital_model/Data.dart';
import 'package:health_care/Services/Api_services.dart';

class Homescreencontroller with ChangeNotifier {
  // Fetch hospital from API
  List<Data>? Hospitallist = [];

  final ApiServices apiService = ApiServices();

  Future<void> getHospital() async {
    SmartDialog.showLoading();
    try {
      Hospitallist = await apiService.Fetchhospital();
      notifyListeners(); // Notify UI to rebuild
    } catch (e) {
      print("Error fetching trips: $e");
    } finally {
      SmartDialog.dismiss();
      notifyListeners();
    }
  }
}
