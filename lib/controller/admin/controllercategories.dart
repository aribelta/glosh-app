import 'package:bigproject/modeljson/admin/get/categoriesadmin.dart';
import 'package:bigproject/repository/admin/repositorycategories.dart';
import 'package:get/get.dart';

class ControllerCategories extends GetxController {
  final _categories = RepositoryCategories();
  List<Collection> listCollection = [];

  Future<void> getCollections() async {
    final dataAdmin = await _categories.getCollections();
    print("data admin register => ${dataAdmin}");
    if (dataAdmin != null) {
      final userData = AdminCategories.fromJson(dataAdmin.data);
      listCollection = userData.collections!;
    }
    update();
  }
}
