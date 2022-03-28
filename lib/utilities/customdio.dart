import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:dio/dio.dart';

class CustomDio {
  Dio dio() {
    Dio dio = Dio();
    dio.options.baseUrl = 'http://mobileapi.cilsy.id:9000';
    dio.options.headers = {
      "Cookie":
          "connect.sid=s%3AQhFK9yuOkloo7rfNGUeeAH4bK-Lf9SYT.WBE4s2vpgMYd43Q7LMVrLkkNKDN6okV8fqtLawC5JoE"
    };
    return dio;
  }
}
