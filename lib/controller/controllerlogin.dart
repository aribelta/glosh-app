import 'package:bigproject/modeljson/modelusers.dart';
import 'package:bigproject/repository/admin/repositoryadmin.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController {
  var _repositoryAdmin = RepositoryAdmin();

  Future<User?> postLogin(
      {required String email, required String password}) async {
    final dataAdmin = await _repositoryAdmin.auth(email, password);
    print("data admin => ${dataAdmin}");

    if (dataAdmin != null) {
      final userData = User.fromJson(dataAdmin.data);
      await SharedPreferencesUtils.setToken(userData.user?.apiToken);
      return userData;
    }
    return null;
  }
}
