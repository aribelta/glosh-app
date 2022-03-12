import 'package:bigproject/controller/controllerhomepage.dart';
import 'package:bigproject/model/address.dart';
import 'package:bigproject/model/color.dart';
import 'package:bigproject/model/component/appbar.dart';
import 'package:bigproject/model/detail.dart';
import 'package:bigproject/model/grid.dart';
import 'package:bigproject/modeljson/models.dart';
import 'package:bigproject/view/user/carousel.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key? key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final _controllerhomepage = Get.put(ControllerHomePage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //command
      appBar: CustomAppBar(title: "Page Title"),
      body: GetBuilder<ControllerHomePage>(
          init: _controllerhomepage,
          initState: (state) {
            print("sebelum get");
            _controllerhomepage.getBook();
            print("sesudah get");
          },
          builder: (ControllerHomePage c) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Card(
                        shadowColor: Colors.black,
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12)),
                        child: const AddressWidget(),
                      ),
                      height: 40,
                      width: 366,
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.all(8.0), child: CarouselWidget()),
                  const Padding(
                    padding: EdgeInsets.only(right: 1, left: 1),
                    child: Padding(
                        padding: EdgeInsets.all(8.0), child: GridWidget()),
                  ),
                  Stack(
                    children: [
                      Stack(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                child: Card(
                                    color: birumuda,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(0))),
                                height: 150,
                                width: MediaQuery.of(context).size.width,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 8, left: 16, top: 8),
                            child: Container(
                                child: const Text("Special Price \ntoday!",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 34,
                                        color: Colors.white)),
                                width: 268,
                                height: 80),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 90),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Center(
                            child: Wrap(
                              runSpacing: 10,
                              spacing: 16,
                              children: [
                                for (var item in _controllerhomepage.listBook)
                                  _cartItem(item),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }

  Widget _cartItem(Book _items) {
    return Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(17),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(1.0, 1.0), blurRadius: 2)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 141,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 48),
                  child: Image.network(_items.imageUrl ?? " "),
                )),
            SizedBox(height: 37),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Text("${_items.title}",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: button)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 6, bottom: 16, right: 15, left: 15),
              child: Text("${_items.bookCategory?.name}",
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: birumuda)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("${_items.price}",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),
                GestureDetector(
                  onTap: () => Fluttertoast.showToast(
                      msg: "x item has been added to cart",
                      gravity: ToastGravity.TOP,
                      toastLength: Toast.LENGTH_LONG,
                      backgroundColor: checkoutbiru),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 12),
                    child: Container(
                      height: 38,
                      width: 51,
                      decoration: BoxDecoration(
                          color: button,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
