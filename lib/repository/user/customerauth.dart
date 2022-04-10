import 'package:bigproject/modeljson/admin/post/modelregistbody.dart';
import 'package:bigproject/utilities/customdio.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:dio/dio.dart';

class RepositoryCustomerAuth {
  CustomDio _dio = CustomDio();

  Future<Response?> custAuth(String email, String password) async {
    try {
      final response = await _dio
          .dio()
          .post("/store/auth", data: {"email": email, "password": password});
      print("response : ${response.runtimeType}");
      return response;
    } catch (err) {
      print("${err.toString()}");
    }
  }

  Future<Response?> registCust(
      String email, String firstName, String lastName, String password) async {
    try {
      final response = await _dio.dio().post("/store/customers",
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
}
