import 'package:bigproject/modeljson/client/get/modelproduct.dart';
import 'package:bigproject/repository/user/custproduct.dart';
import 'package:bigproject/utilities/customdio.dart';
import 'package:get/get.dart';

class ControllerFreshProduce extends GetxController {
  final _freshProduceUser = RepositoryProductUser();
  CustomDio _customDio = CustomDio();
  List<Product> listProduct = [];

  Future<void> getFreshProduceProduct() async {
    final dataAdmin = await _freshProduceUser.custProduct();
    if (dataAdmin != null) {
      final userData = ProductType.fromJson(dataAdmin.data);
      listProduct = userData.products!;
    }
    update();
  }
}
