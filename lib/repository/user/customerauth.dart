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
}
