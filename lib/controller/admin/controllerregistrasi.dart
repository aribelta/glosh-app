import 'package:bigproject/modeljson/admin/post/modelregisteradmin.dart';
import 'package:bigproject/repository/admin/repositoryadmin.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:get/get.dart';

class ControllerRegistrasi extends GetxController {
  final _registAdmin = RepositoryAdmin();

  Future<RegisterAdmin?> postRegistrasi(
      {required String email,
      required String firstName,
      required String lastName,
      required String password}) async {
    final dataAdmin =
        await _registAdmin.registAdmin(email, firstName, lastName, password);

    print("data admin register => ${dataAdmin}");
    if (dataAdmin != null) {
      final userData = RegisterAdmin.fromJson(dataAdmin.data);
      return userData;
    }
    return null;
  }
}
