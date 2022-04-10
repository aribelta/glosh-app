import 'package:bigproject/modeljson/admin/get/listgetproduct.dart';
import 'package:bigproject/modeljson/admin/post/modelregisteradmin.dart';
import 'package:bigproject/repository/admin/repositoryadmin.dart';
import 'package:bigproject/repository/admin/repositoryproduct.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:get/get.dart';

class ControllerProduct extends GetxController {
  final _productAdmin = RepositoryProduct();
  List<Product> listProduct = [];

  Future<void> getProduct() async {
    final dataAdmin = await _productAdmin.product();
    print("data admin register => ${dataAdmin}");
    if (dataAdmin != null) {
      final userData = ProductType.fromJson(dataAdmin.data);
      listProduct = userData.products!;
      // userData.products!.map((e) => Product.fromJson(e.toJson())).toList();
    }
    update();
  }

  // Future<ProductType?> getProduct() async {
  //   final dataAdmin = await _productAdmin.product();
  //   print("data admin register => ${dataAdmin}");
  //   if (dataAdmin != null) {
  //     final userData = ProductType.fromJson(dataAdmin.data);
  //     return userData;
  //   }
  //   return null;
  // }
}
