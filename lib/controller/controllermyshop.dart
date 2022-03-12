import 'package:bigproject/model/detail.dart';
import 'package:bigproject/modeljson/models.dart';
import 'package:bigproject/repository/repositorybook.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class ControllerMyShop extends GetxController {
  String? _namatoko;
  int? _jumlahfollowers;
  int? _jumlahvisit;
  List<Product>? _listproduct = [];

  @override
  void onInit() {
    super.onInit();
    setNamaToko();
    setJumlahFollowers();
    setJumlahVisit();
    setListProduct();
  }

  setNamaToko() {
    _namatoko = "Nama Toko";
  }

  setJumlahFollowers() {
    _jumlahfollowers = 100;
  }

  setJumlahVisit() {
    _jumlahvisit = 100;
  }

  setListProduct() {
    _listproduct!.add(
      Product(
          image: "images/bukusatu.png",
          title: "Surprise Book Box",
          subtitle: "Paperback & Hard Cover",
          cart: "1kg, 2 - 3 pcs",
          price: "\$1.99"),
    );
    _listproduct!.add(
      Product(
          image: "images/bukudua.png",
          title: "The Kinfolk Table",
          subtitle: "Paperback",
          cart: "1kg, 1 pcs",
          price: "\$1.99"),
    );
    _listproduct!.add(
      Product(
          image: "images/bukutiga.png",
          title: "A Book Full of Hope",
          subtitle: "Hardcover",
          cart: "1kg, 2 - 3 pcs",
          price: "\$2.99"),
    );
  }

  get namaToko => _namatoko;
  get jumlahFollowers => _jumlahfollowers;
  get jumlahVisit => _jumlahvisit;
  get listProduct => _listproduct;

  // var repositoryBook = RepositoryBook();
  // List<Book> listBook = [];

  // getBook() async {
  //   try {
  //     final resp = await repositoryBook.findAllBook();
  //     for (var i in resp!.data) {
  //       print("Data I ${i.toString()}");
  //       listBook.add(Book.fromJson(i));
  //     }
  //     update();
  //   } on DioError catch (e) {
  //     print("${e.toString()}");
  //   }
  // }
}
