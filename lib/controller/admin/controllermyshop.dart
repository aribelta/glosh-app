import 'package:bigproject/modeljson/admin/get/getstorename.dart';
import 'package:bigproject/modeljson/admin/get/listgetproduct.dart';
import 'package:bigproject/modeljson/models.dart' as prefix;
import 'package:bigproject/repository/admin/repositorygetstoredetails.dart';
import 'package:bigproject/repository/admin/repositoryproduct.dart';
import 'package:bigproject/repository/repositorybook.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ControllerMyShop extends GetxController {
  // String? _namatoko;
  // int? _jumlahfollowers;
  // int? _jumlahvisit;

  // @override
  // void onInit() {
  //   super.onInit();
  //   setNamaToko();
  //   setJumlahFollowers();
  //   setJumlahVisit();
  //   setListProduct();
  // }

  // setNamaToko() {
  //   _namatoko = "Nama Toko";
  // }

  // setJumlahFollowers() {
  //   _jumlahfollowers = 100;
  // }

  // setJumlahVisit() {
  //   _jumlahvisit = 100;
  // }

  // setListProduct() {
  //   _listproduct!.add(
  //     Product(
  //         image: "images/bukusatu.png",
  //         title: "Surprise Book Box",
  //         subtitle: "Paperback & Hard Cover",
  //         cart: "1kg, 2 - 3 pcs",
  //         price: "\$1.99"),
  //   );
  //   _listproduct!.add(
  //     Product(
  //         image: "images/bukudua.png",
  //         title: "The Kinfolk Table",
  //         subtitle: "Paperback",
  //         cart: "1kg, 1 pcs",
  //         price: "\$1.99"),
  //   );
  //   _listproduct!.add(
  //     Product(
  //         image: "images/bukutiga.png",
  //         title: "A Book Full of Hope",
  //         subtitle: "Hardcover",
  //         cart: "1kg, 2 - 3 pcs",
  //         price: "\$2.99"),
  //   );
  // }

  // get namaToko => _namatoko;
  // get jumlahFollowers => _jumlahfollowers;
  // get jumlahVisit => _jumlahvisit;
  // get listProduct => _listproduct;
  final _productName = RepositoryStoreDetails();
  var storeName = StoreName();
  final _productAdmin = RepositoryProduct();
  List<Product> listProduct = [];

  // Future<void> getProduct() async {
  //   final dataAdmin = await _productAdmin.product();
  //   print("data admin register => ${dataAdmin}");
  //   if (dataAdmin != null) {
  //     final userData = ProductType.fromJson(dataAdmin.data);
  //     listProduct =
  //         userData.products!.map((e) => Product.fromJson(e.toJson())).toList();
  //   }
  //   update();
  // }
  Future<void> getStoreName() async {
    try {
      final response = await _productName.getStoreDetails();
      print("response => ${response?.data}");
      storeName = StoreName.fromJson(response?.data);
      update();
    } catch (e) {
      e.toString();
    }
  }

  Future<void> getProduct() async {
    final dataAdmin = await _productAdmin.product();
    print("data admin register => ${dataAdmin}");
    if (dataAdmin != null) {
      final userData = ProductType.fromJson(dataAdmin.data);
      listProduct =
          userData.products!.map((e) => Product.fromJson(e.toJson())).toList();
    }
    update();
  }
}
