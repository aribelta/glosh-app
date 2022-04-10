import 'package:bigproject/modeljson/admin/get/listgetproduct.dart';
import 'package:bigproject/repository/admin/repositoryproduct.dart';
import 'package:bigproject/utilities/customdio.dart';
import 'package:get/get.dart';

class ControllerYourProduct extends GetxController {
  final _yourProductAdmin = RepositoryProduct();
  CustomDio _customDio = CustomDio();
  List<Product> listProduct = [];

  Future<void> getYourProduct() async {
    final dataAdmin = await _yourProductAdmin.product();
    if (dataAdmin != null) {
      final userData = ProductType.fromJson(dataAdmin.data);
      listProduct = userData.products!;
    }
    update();
  }
}
