import 'package:bigproject/routes/navigator.dart';
import 'package:bigproject/view/admin/categories.dart';
import 'package:bigproject/view/admin/myshop.dart';
import 'package:bigproject/view/admin/yourproduct.dart';
import 'package:bigproject/view/user/checkout.dart';
import 'package:bigproject/view/user/getstarted.dart';
import 'package:bigproject/view/user/homeselect.dart';
import 'package:bigproject/view/user/login.dart';
import 'package:bigproject/view/user/register.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: [
        GetPage(
          name: Navi.getStarted,
          page: () => GetStartedWidget(),
        ),
        GetPage(
            name: Navi.login,
            page: () => LoginWidget(),
            transition: Transition.upToDown,
            transitionDuration: Duration(seconds: 1)),
        GetPage(
          name: Navi.register,
          page: () => RegisterWidget(),
        ),
        GetPage(
          name: Navi.home,
          page: () => HomeWidget(),
        ),
        GetPage(
          name: Navi.checkout,
          page: () => CheckoutWidget(),
        ),
        GetPage(name: Navi.myshop, page: () => MyShopWidget()),
        GetPage(name: Navi.product, page: () => ProWidget()),
        GetPage(name: Navi.category, page: () => CategoriesWidget())
      ],
      defaultTransition: Transition.noTransition,
    );
  }
}
