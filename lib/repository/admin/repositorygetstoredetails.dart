import 'package:bigproject/utilities/customdio.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:dio/dio.dart';

class RepositoryStoreDetails {
  CustomDio _customDio = CustomDio();

  Future<Response?> getStoreDetails() async {
    try {
      final response = await _customDio.dio().get("/admin/store");
      return response;
    } catch (e) {
      e.toString();
    }
  }
}
