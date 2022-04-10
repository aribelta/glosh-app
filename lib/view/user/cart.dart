import 'package:bigproject/model/button.dart';
import 'package:bigproject/model/color.dart';
import 'package:bigproject/model/detail.dart';
import 'package:bigproject/routes/navigator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({Key? key}) : super(key: key);

  @override
  _CartWidgetState createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  int _bil = 1;
  String harga = "xxx";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundbiru,
        appBar: AppBar(
          leading: Icon(Icons.menu, color: birumuda),
          title: Text("My Cart", style: TextStyle(color: birumuda)),
          backgroundColor: Colors.white,
          actions: [Icon(Icons.search, color: birumuda)],
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 32),
                          child: Text("Select All"),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 14),
                          child: Icon(
                            Icons.check_box_outline_blank,
                            color: button,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 23),
                        child: Divider(thickness: 0.8, color: birumuda),
                      ))
                ],
              ),
            ),
            Stack(
              children: [
                Column(
                  children: [
                    Column(
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          itemCount: 3,
                          itemBuilder: (ctx, position) {
                            var _produk = product[position];
                            return Container(
                              color: Colors.white,
                              height: 110,
                              width: MediaQuery.of(context).size.width,
                              child: Column(children: [
                                Expanded(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 10, vertical: 8),
                                        child: SizedBox(
                                          height: 100,
                                          width: 100,
                                          child:
                                              Image.asset("${_produk.image}"),
                                        ),
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                horizontal: 4,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5),
                                                child: Text(
                                                  "${_produk.title}",
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      fontSize: 20,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 6, bottom: 20),
                                              child: position == 1
                                                  ? Text(
                                                      "${_produk.subtitle}",
                                                      textAlign: TextAlign.left,
                                                    )
                                                  : Text("1kg, 2-3 pcs")),
                                          const Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: SizedBox(
                                              height: 30,
                                              width: 47,
                                              child: Text(
                                                r"$xxx",
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 14),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              position == 2
                                                  ? Icon(
                                                      Icons
                                                          .check_box_outline_blank,
                                                      color: button,
                                                    )
                                                  : const Icon(Icons.check_box,
                                                      color: button),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                  top: 36,
                                                ),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      Container(
                                                        decoration:
                                                            BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8),
                                                                border:
                                                                    Border.all(
                                                                  color:
                                                                      birumuda,
                                                                  width: 1,
                                                                )),
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.5),
                                                          child: Icon(
                                                            Icons.remove,
                                                            color: minus,
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                horizontal: 10),
                                                        child: Container(
                                                          width: 13,
                                                          child: Text("${_bil}",
                                                              style: GoogleFonts
                                                                  .roboto(
                                                                      fontSize:
                                                                          20)),
                                                        ),
                                                      ),
                                                      Container(
                                                        child: const Padding(
                                                          padding:
                                                              EdgeInsets.all(
                                                                  2.5),
                                                          child: Icon(
                                                            Icons.add,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                        decoration: BoxDecoration(
                                                            color: button,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                      ),
                                                    ]),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                position == 2
                                    ? Divider(thickness: 0, color: Colors.white)
                                    : Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Divider(
                                          thickness: 0,
                                          color: birumuda,
                                        ),
                                      ),
                              ]),
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 80,
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        _checkoutWidget(),
                        Positioned(
                          left: 100,
                          top: -50,
                          width: MediaQuery.of(context).size.width - 200,
                          height: 85,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                height: 100,
                                width: 10,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Total 3 items",
                                      style: TextStyle(color: birumuda),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(r"$100.55",
                                          style: TextStyle(
                                              color: button,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700)),
                                    )
                                  ],
                                )),
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ));
  }

  Widget _checkoutWidget() {
    return Stack(
      children: [
        Container(
            width: 410,
            height: 200,
            decoration: const BoxDecoration(
                color: checkoutbiru,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(90)))),
        Positioned(
          bottom: 110,
          child: ButtonWidget(
              title: "Checkout",
              onPressedButton: () {
                Get.toNamed(Navi.checkout);
                // Navigator.pushNamed(context, "/checkout");
              }),
        )
      ],
    );
  }
}
