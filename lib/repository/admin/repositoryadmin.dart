import 'package:bigproject/modeljson/admin/post/modelregistbody.dart';
import 'package:bigproject/utilities/customdio.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:dio/dio.dart';

class RepositoryAdmin {
  CustomDio _customDio = CustomDio();
  // Dio _dio() {
  //   Dio dio = Dio();
  //   dio.options.baseUrl = 'http://mobileapi.cilsy.id:9000';
  //   dio.options.headers = {
  //     "Authorization": SharedPreferencesUtils.getToken(),
  //     "Cookie":
  //         "connect.sid=s%3A0oUhN-naQeLRkEeIoIrUrS-O7WwcJEZa.pf039qxlbAOy1E9rcIKwkgcwItTgTb%2BYI3fDhQhjYnU"
  //   };
  //   return dio;
  // }

  Future<Response?> auth(String email, String password) async {
    try {
      final response = await _customDio
          .dio()
          .post("/admin/auth", data: {"email": email, "password": password});
      print("response : ${response.runtimeType}");
      return response;
    } catch (err) {
      print("${err.toString()}");
    }
  }

  Future<Response?> registAdmin(
      String email, String firstName, String lastName, String password) async {
    try {
      final response = await _customDio.dio().post("/admin/customers",
          // data:
          // {
          //   "email": email,
          //   "first_name": firstName,
          //   "last_name": lastName,
          //   "password": password
          // }
          data: RegistBody(
                  email: email,
                  firstName: firstName,
                  lastName: lastName,
                  password: password)
              .toJson());
      print("response : ${response.runtimeType}");
      return response;
    } catch (e) {
      print(e.toString());
    }
  }

  Future<Response?> listAdmin(String id) async {
    try {
      final response = await _customDio.dio().get(
            "/admin/customers/${id}",
          );
    } catch (e) {
      print("${e.toString()}");
    }
  }
}
