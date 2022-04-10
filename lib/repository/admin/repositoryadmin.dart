import 'package:bigproject/modeljson/admin/post/modelregistbody.dart';
import 'package:bigproject/utilities/customdio.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:dio/dio.dart';

class RepositoryAdmin {
  CustomDio _customDio = CustomDio();

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
