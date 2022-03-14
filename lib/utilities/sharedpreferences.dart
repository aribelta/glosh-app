import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static Future<void> setToken(String? token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', "Bearer $token");
  }

  static Future<String> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    return Future.value(prefs.getString('token'));
  }
}
