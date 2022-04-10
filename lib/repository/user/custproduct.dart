import 'package:bigproject/utilities/customdio.dart';
import 'package:dio/dio.dart';

class RepositoryProductUser {
  CustomDio _customDio = CustomDio();
  Future<Response?> custProduct() async {
    try {
      final response = await _customDio.dio().get("/store/products");
      print("response : ${response.runtimeType}");
      return response;
    } catch (err) {
      print("${err.toString()}");
    }
  }
}
