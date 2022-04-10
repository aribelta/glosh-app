import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:dio/dio.dart';

class CustomDio {
  Dio dio() {
    Dio dio = Dio();
    dio.options.baseUrl = 'http://mobileapi.cilsy.id:9000';
    dio.options.headers = {
      "Cookie":
          "connect.sid=s%3Ay79zWC2JWMdyDnJNwq5wDP9j73r7YC-n.%2FIYNurFjXEqXKTC2%2BoPn7bdH7Ujl1n%2B94qMUHncKzTI"
    };
    return dio;
  }
}
