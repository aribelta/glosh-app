import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static Future<void> setToken(String? token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', "Bearer $token");
  }

  static Future<void> setId(String? id) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('id', "$id");
  }

  static Future<void> setRole(String? role) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('role', "$role");
  }

  static Future<void> setEmail(String? email) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('email', "$email");
  }

  static Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value(prefs.getString('token'));
  }

  static Future<void> setIsLogin(bool isLogin) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLogin', isLogin);
  }

  static Future<bool> getLogin() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value(prefs.getBool("isLogin"));
  }

  static Future<String> getRole() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value(prefs.getString("role"));
  }

  static Future<String> getId() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value(prefs.getString("id"));
  }

  static Future<void> deleteCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
