import 'package:dio/dio.dart';

class RepositoryBook {
  Future<Response?> findAllBook() async {
    try {
      final response = await Dio()
          .get("https://run.mocky.io/v3/fb47e348-5931-4b31-a156-06cdef3a57ff");
      print("response : ${response.runtimeType}");
      return response;
    } catch (err) {
      print("${err.toString()}");
    }
  }
}
