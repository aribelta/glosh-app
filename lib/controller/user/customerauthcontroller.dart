import 'package:bigproject/modeljson/client/post/modelcustomer.dart';
import 'package:bigproject/repository/user/customerauth.dart';
import 'package:bigproject/utilities/sharedpreferences.dart';
import 'package:get/get.dart';

class ControllerCustomerAuth extends GetxController {
  final _registCust = RepositoryCustomerAuth();

  Future<CustomerAuth?> postRegistrasiCustomer(
      {required String email,
      required String firstName,
      required String lastName,
      required String password}) async {
    final dataAdmin =
        await _registCust.registCust(email, firstName, lastName, password);

    print("data admin register => ${dataAdmin}");
    if (dataAdmin != null) {
      final userData = CustomerAuth.fromJson(dataAdmin.data);
      return userData;
    }
    return null;
  }
}
