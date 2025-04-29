import 'package:flutter/material.dart';
import 'package:health_care/Model/loginscreenmodal/loginrespomodel.dart';
import 'package:health_care/Services/Api_services.dart';
import 'package:health_care/Services/Userservices/Userservices.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreenController with ChangeNotifier {
  final ApiServices apiServices = ApiServices();
  UserService userService = UserService();
  Future<bool> login({required String email, required String password}) async {
    LoginResModel? resModel = await apiServices.onLogin(email, password);
    notifyListeners();
    if (resModel != null) {
      await userService.saveUser(resModel);
      return true;
    }
    return false;
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    // await prefs.setString('name', name.text)
    return prefs.getString('access');
  }
}
