import 'package:health_care/Model/loginscreenmodal/loginrespomodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

// Import your LoginResModel here

class UserService {
  static const String _userKey = 'user_data';

  /// Save user data to SharedPreferences
  Future<void> saveUser(LoginResModel user) async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = loginResModelToJson(user);
    await prefs.setString(_userKey, jsonString);
  }

  /// Retrieve user data from SharedPreferences
  static Future<LoginResModel?> getUser() async {
    final prefs = await SharedPreferences.getInstance();
    final jsonString = prefs.getString(_userKey);

    if (jsonString != null) {
      return loginResModelFromJson(jsonString);
    }
    return null;
  }

  /// Clear user data (logout)
  static Future<void> clearUser() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_userKey);
  }

  /// Check if user is logged in
  static Future<bool> isLoggedIn() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.containsKey(_userKey);
  }
}
