import 'package:bigproject/modeljson/admin/post/modelusers.dart';
import 'package:bigproject/modeljson/client/modelcustomer.dart';
import 'package:bigproject/repository/admin/repositoryadmin.dart';
import 'package:bigproject/repository/user/customerauth.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:get/get.dart';

class ControllerLogin extends GetxController {
  var _repositoryAdmin = RepositoryAdmin();
  var _repositoryCust = RepositoryCustomerAuth();
  bool pass = true;
  bool checkBox = false;

  void obscurePassword(bool isShow) {
    pass = !isShow;
    update();
  }

  void changesCheckbox(bool isChecked) {
    checkBox = !isChecked;
    update();
  }

  Future<User?> postLogin(
      {required String email, required String password}) async {
    final dataAdmin = await _repositoryAdmin.auth(email, password);
    print("data admin => ${dataAdmin}");

    if (dataAdmin != null) {
      final userData = User.fromJson(dataAdmin.data);
      await setAllSharedPreferences(userData);
      return userData;
    }
    return null;
  }

  Future<CustomerAuth?> postLoginCustomer(
      {required String email, required String password}) async {
    final dataCustomer = await _repositoryCust.custAuth(email, password);

    if (dataCustomer != null) {
      final custData = CustomerAuth.fromJson(dataCustomer.data);
      await setAllSharedPreferencesCustomer(custData);
      return custData;
    }
    return null;
  }

  Future<void> setAllSharedPreferences(User? user) async {
    await SharedPreferencesUtils.setId(user?.user?.id);
    await SharedPreferencesUtils.setRole(user?.user?.role);
    await SharedPreferencesUtils.setIsLogin(true);
  }

  Future<void> setAllSharedPreferencesCustomer(CustomerAuth user) async {
    await SharedPreferencesUtils.setId(user.customer?.id);
    await SharedPreferencesUtils.setRole("client");
    await SharedPreferencesUtils.setIsLogin(true);
  }
}
