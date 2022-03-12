import 'package:bigproject/repository/repositorybook.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:bigproject/modeljson/models.dart';

class ControllerHomePage extends GetxController {
  var _repositoryBook = RepositoryBook();
  List<Book> listBook = [];

  getBook() async {
    print("tes");
    try {
      final resp = await _repositoryBook.findAllBook();
      print("print response: ${resp}");
      for (var i in resp!.data) {
        print("Data I ${i.toString()}");
        listBook.add(Book.fromJson(i));
      }
      update();
    } on DioError catch (e) {
      print("${e.toString()}");
    }
  }

  getBookList() async {
    print("tes");
    try {
      final resp = await _repositoryBook.findAllBook();
      print("print response: ${resp}");
      var responsedata = bookFromJson(resp?.data);
      listBook.addAll(responsedata);
      update();
    } on DioError catch (e) {
      print("${e.toString()}");
    }
  }
}
