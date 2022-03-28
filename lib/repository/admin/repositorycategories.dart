import 'package:bigproject/utilities/customdio.dart';
import 'package:dio/dio.dart';

class RepositoryCategories {
  CustomDio _customDio = CustomDio();

  Future<Response?> getCollections() async {
    try {
      final response = await _customDio.dio().get("/admin/collections");
      return response;
    } catch (e) {
      e.toString();
    }
  }
}
