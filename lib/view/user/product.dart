import 'package:bigproject/controller/user/controllerfreshproduce.dart';
import 'package:bigproject/model/color.dart';
import 'package:bigproject/model/component/appbar.dart';
import 'package:bigproject/modeljson/client/get/modelproduct.dart' as prefix;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  var _controllerfreshproduce = Get.put(ControllerFreshProduce());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Fresh Produce"),
        body: GetBuilder<ControllerFreshProduce>(
            init: _controllerfreshproduce,
            initState: (state) {
              _controllerfreshproduce.getFreshProduceProduct();
            },
            builder: (ControllerFreshProduce c) {
              return SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 120,
                      width: MediaQuery.of(context).size.width,
                      child: Card(
                          color: button,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(0))),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 19, vertical: 16),
                      child: Text("Fresh Produce",
                          style: GoogleFonts.workSans(
                              fontWeight: FontWeight.w700,
                              fontSize: 34,
                              color: Colors.white)),
                    ),
                    // ListView(
                    //   children: [Text("data")],
                    // )
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 75,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 22.5),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Wrap(
                              runSpacing: 10,
                              spacing: 20,
                              alignment: WrapAlignment.start,
                              children: [
                                for (var item
                                    in _controllerfreshproduce.listProduct)
                                  _cartItem(item),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ],
                ),
              );
            }));
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
                  padding: const EdgeInsets.only(top: 48, left: 10, right: 10),
                  child: Image.network(
                    _items.thumbnail ?? " ",
                    scale: 3,
                    fit: BoxFit.cover,
                  ),
                )),
            SizedBox(height: 37),
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
            Padding(
              padding: const EdgeInsets.only(bottom: 13, right: 15, left: 15),
              child: Text("${_items.description}",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w500,
                      color: birumuda)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Row(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Container(
                      height: 38,
                      width: 51,
                      decoration: BoxDecoration(
                          color: button,
                          borderRadius: BorderRadius.circular(100)),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
