import 'dart:convert';

import 'package:health_care/Model/hospital_model/Data.dart';

import 'package:health_care/Model/hospital_model/hospital.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiServices {
  static const String baseUrl = "http://192.168.1.53:8000";
  // token sharedpreference
  Future<String?> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('access');
  }

//on Registartion
  Future<bool?> onRegister(
    String Name,
    String phone,
    String email,
    String password,
    //String Dob,
  ) async {
    final url = Uri.parse("$baseUrl/registration/");
    var headers = {
      "accept": "application/json",
      "Content-Type": "application/json"
    };
    var body = jsonEncode({
      "name": Name,
      "phone": phone,
      "email": email,
      "password": password,
      //"dob": Dob
    });
    print("headers:$headers:::body::$body,url::$url");
    try {
      SmartDialog.showLoading();
      print("h:::$headers---body:$body");
      final response = await http.post(url, headers: headers, body: body);
      SmartDialog.dismiss();
      print(response.body);
      print(response.statusCode);
      if (response.statusCode >= 200 && response.statusCode <= 299) {
        print(response.body);
        return true;
      } else {
        return false;
      }
    } catch (e) {
      SmartDialog.dismiss();
      print(e.toString());
      return false;
    }
  }

//---------on login-----------

  Future<bool?> onLogin(String email, String password) async {
    final url = Uri.parse("$baseUrl/login/");
    var headers = {
      "Accept": "application/json",
      "Content-Type": "application/json"
    };
    var body = jsonEncode({
      "email": email,
      "password": password,
    });

    print("Request -> URL: $url, Headers: $headers, Body: $body");

    try {
      SmartDialog.showLoading();
      final response = await http.post(url, headers: headers, body: body);
      SmartDialog.dismiss();

      print(
          "Response -> Status Code: ${response.statusCode}, Body: ${response.body}");

      if (response.statusCode == 200) {
        var jsonResponse = jsonDecode(response.body);

        if (jsonResponse['access'] != null &&
            jsonResponse['access'].isNotEmpty) {
          String accessToken = jsonResponse['access'];
          String refreshToken = jsonResponse['refresh'] ?? "";

          final prefs = await SharedPreferences.getInstance();
          await prefs.setString('access', accessToken);
          await prefs.setString('refresh', refreshToken);

          return true;
        }
      } else {
        print("Login failed: ${response.body}");
      }
    } catch (e) {
      print("Login Error: $e");
    } finally {
      SmartDialog.dismiss();
    }
    return false;
  }

  //----------On doctorfetching-------------
  Future<bool?> fetchDoctors() async {
    final url = Uri.parse("$baseUrl/doctors-all/");
    var headers = {
      "Accept": "application/json",
      "Content-Type": "application/json"
    };
    try {
      SmartDialog.showLoading();

      print("Fetching doctors... Headers: $headers");

      final response = await http.get(url, headers: headers);

      print("API Response Code: ${response.statusCode}");
      print("API Response Body: ${response.body}");

      return response.statusCode >= 200 && response.statusCode <= 299;
    } catch (e) {
      SmartDialog.dismiss();
      print("API Error: $e");
      return false;
    }
  }

  //------------On hospitalfetching-----------

  Future<List<Data>?> Fetchhospital() async {
    final url = Uri.parse("$baseUrl/hospitals-all/");
    String? accessToken = await getToken();

    if (accessToken == null || accessToken.isEmpty) {
      throw Exception("User is not authenticated. Access token is missing.");
    }

    var headers = {
      "accept": "application/json",
      "Authorization": "Bearer $accessToken",
    };

    try {
      print("Fetching trips from: $url");
      final response = await http.get(url, headers: headers);

      print("Response Code: ${response.statusCode}");
      print("Response Body: ${response.body}");

      if (response.statusCode >= 200 && response.statusCode < 300) {
        var jsonData = json.decode(response.body);
        var res = Hospitalist.fromJson(jsonData);
        var list = res.data;
        return list;
      } else {
        throw Exception("Invalid response format: 'data' key missing or null");
      }
    } catch (e) {
      print("Error fetching hospital: $e");
      throw Exception("Error fetching hospital: $e");
    }
  }
}
