import 'package:dio/dio.dart';

class RepositoryAdmin {
  Dio _dio() {
    Dio dio = Dio();
    dio.options.baseUrl = 'http://mobileapi.cilsy.id:9000';
    return dio;
  }

  Future<Response?> auth(String email, String password) async {
    try {
      final response = await _dio()
          .post("/admin/auth", data: {"email": email, "password": password});
      print("response : ${response.runtimeType}");
      return response;
    } catch (err) {
      print("${err.toString()}");
    }
  }
}
