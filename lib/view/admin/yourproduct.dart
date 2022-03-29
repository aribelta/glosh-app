import 'package:bigproject/controller/admin/controlleryourproduct.dart';
import 'package:bigproject/model/color.dart';
import 'package:bigproject/modeljson/admin/get/listgetproduct.dart' as prefix;
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProWidget extends StatefulWidget {
  const ProWidget({Key? key}) : super(key: key);

  @override
  State<ProWidget> createState() => _ProWidgetState();
}

class _ProWidgetState extends State<ProWidget> {
  var _controlleryourproduct = Get.put(ControllerYourProduct());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: button,
        title: Text("Your Products"),
        leading: Icon(Icons.arrow_back),
        actions: [
          IconButton(
            onPressed: () {
              _onPressButton(context);
            },
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      backgroundColor: backgroundbiru,
      body: GetBuilder<ControllerYourProduct>(
          init: _controlleryourproduct,
          initState: (state) {
            _controlleryourproduct.getYourProduct();
          },
          builder: (ControllerYourProduct c) {
            return ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Your Products",
                        style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 20)),
                      ),
                      Text("See All (120 Products)",
                          style: GoogleFonts.workSans(
                              textStyle: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 13,
                                  color: namatoko))),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Wrap(
                        runSpacing: 12,
                        spacing: 20,
                        children: _productAddList()),
                  ),
                ),
                SizedBox(
                  height: 5,
                )
              ],
            );
          }),
    );
  }

  _onPressButton(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Wrap(children: [
          ListTile(
            title: Text(
              'Menu',
              style: GoogleFonts.workSans(
                  textStyle:
                      TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
            ),
          ),
          Divider(thickness: 1, color: Color(0xffEADDFF)),
          ListTile(
            onTap: () => Get.toNamed("/category"),
            title: Text('Your Categories'),
          ),
        ]);
      },
      barrierColor: Colors.transparent,
    );
  }

  _productAddList() {
    List<Widget> addprod = [];
    // for (var i = 0; i < item.length; i++)
    // //_cartItem(item);
    // {
    //   // if (i == 0) {
    //   //   addprod.insert(0, _blueadd());
    //   //   // addprod.add(_blueadd());
    //   // } else {
    //   //   addprod.add(_cartItem(item[i]));
    //   // }
    //   addprod.add(_cartItem(item[i]));
    // }

    // addprod.addAll(item.map((e) => _cartItem(e)).toList());
    addprod.addAll(
        _controlleryourproduct.listProduct.map((e) => _cartItem(e)).toList());
    addprod.insert(0, _blueadd());

    // addprod = item.map((e) => _cartItem(e)).toList();
    return addprod;
  }

  Widget _cartItem(prefix.Product _items) {
    return Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 315,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(17)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 141,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Image.network(
                    _items.thumbnail ?? " ",
                    scale: 3,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                child: Text("${_items.title}",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: button)),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 9, right: 15, left: 15),
                child: Text("${_items.description}",
                    textAlign: TextAlign.center,
                    maxLines: 6,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                        color: birumuda)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Text("${_items.weight}",
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
            ),
          ],
        ));
  }

  Widget _blueadd() {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 2.5,
      height: 315,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
        color: button,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Add Product",
                style: GoogleFonts.workSans(
                    textStyle: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Colors.white))),
            SizedBox(
              height: 42,
            ),
            Stack(
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 74,
                    height: 55,
                    decoration: BoxDecoration(
                        color: checkoutbiru,
                        borderRadius: BorderRadius.circular(30)),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 5),
                    Align(
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.add,
                          size: 44,
                          color: namatoko,
                        )),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
