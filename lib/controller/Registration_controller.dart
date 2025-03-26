import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:health_care/Services/Api_services.dart';

class RegistrationController with ChangeNotifier {
  ApiServices apiServices = ApiServices();
  Future<bool?> Register({
    required String Name,
    required String phone,
    required String email,
    required String passWord,
  }) async {
    bool? s = await apiServices.onRegister(
      Name,
      phone,
      email,
      passWord,
    ); //Dob
    notifyListeners();
    if (s == true) {
      return true;
    } else {
      return false;
    }
  }
}
