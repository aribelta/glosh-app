import 'package:bigproject/utilities/customdio.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:dio/dio.dart';

class RepositoryProduct {
  CustomDio _customDio = CustomDio();

  Future<Response?> product() async {
    try {
      final response = await _customDio.dio().get("/admin/products");
      print("response : ${response.runtimeType}");
      return response;
    } catch (err) {
      print("${err.toString()}");
    }
  }
}
