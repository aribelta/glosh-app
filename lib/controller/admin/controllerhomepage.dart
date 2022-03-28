import 'package:bigproject/modeljson/admin/get/listgetproduct.dart';
import 'package:bigproject/repository/admin/repositoryproduct.dart';
import 'package:bigproject/repository/repositorybook.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:bigproject/modeljson/models.dart';

class ControllerHomePage extends GetxController {
  var _repositoryBook = RepositoryBook();
  List<Book> listBook = [];
  List<Product> listProduct = [];
  final _productAdmin = RepositoryProduct();

  Future<void> getProduct() async {
    final dataAdmin = await _productAdmin.custProduct();
    print("data admin register => ${dataAdmin}");
    if (dataAdmin != null) {
      final userData = ProductType.fromJson(dataAdmin.data);
      listProduct =
          userData.products!.map((e) => Product.fromJson(e.toJson())).toList();
    }
    update();
  }

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
}
