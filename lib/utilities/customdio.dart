import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:dio/dio.dart';

class CustomDio {
  Dio dio() {
    Dio dio = Dio();
    dio.options.baseUrl = 'http://mobileapi.cilsy.id:9000';
    dio.options.headers = {
      "Cookie":
          "connect.sid=s%3A1jl6h3r7aMBdUD0uU0NMn7svFCAeaPwv.dhzwdoGf8Q4C5YknvLRf3gKkwhpKJaG107cNTbUrWfs"
    };
    return dio;
  }
}
