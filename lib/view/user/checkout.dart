import 'package:bigproject/model/button.dart';
import 'package:bigproject/model/color.dart';
import 'package:bigproject/model/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutWidget extends StatefulWidget {
  const CheckoutWidget({Key? key}) : super(key: key);

  @override
  _CheckoutWidgetState createState() => _CheckoutWidgetState();
}

class _CheckoutWidgetState extends State<CheckoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundbiru,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Checkout",
                  style: TextStyle(
                      fontSize: 34, fontWeight: FontWeight.w700, color: button),
                ),
                SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  height: 158,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 7, left: 5),
                                child: Text("Delivery Location",
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400)),
                              ),
                              SizedBox(
                                height: 30,
                                width: 160,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: button),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.edit, color: button),
                                      Text(
                                        "Change Location",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: button),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ]),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 10),
                          child: Text(
                            "Alamat kantor",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 7, horizontal: 3),
                          child: Text(
                            "Jl. Sukajadi no 64 kelurahan cicendo, Bandung",
                            style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 13),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 3),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 30,
                                width: 140,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: button),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.edit, color: button),
                                      Text(
                                        "Edit Address",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: button),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 30,
                                width: 120,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: button),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(100))),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: const [
                                      Icon(Icons.edit, color: button),
                                      Text(
                                        "Add Notes",
                                        style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w400,
                                            color: button),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (ctx, position) {
                      var _produk = product[position];
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: SizedBox(
                          height: 120,
                          width: MediaQuery.of(context).size.width,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(24)),
                            height: 158,
                            width: double.infinity,
                            child: Column(children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                          height: 100,
                                          width: 100,
                                          child:
                                              Image.asset("${_produk.image}")),
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 4,
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 20, left: 6),
                                              child: Text(
                                                "${_produk.title}",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Text(
                                            "${_produk.cart}",
                                            textAlign: TextAlign.left,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 13),
                                          child: Row(
                                            children: const [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: SizedBox(
                                                  height: 32,
                                                  width: 47,
                                                  child: Text(
                                                    "Price",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 80,
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 5),
                                                child: SizedBox(
                                                  height: 30,
                                                  width: 47,
                                                  child: Text(
                                                    r"$xxx",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ]),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Container(
                  height: 312,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 23, horizontal: 17),
                        child: Text("Price Summary"),
                      ),
                      ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: 2,
                          itemBuilder: (ctx, position) {
                            var _produk = product[position];
                            return Column(
                              children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 17),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "${_produk.title}",
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 20,
                                                    color: Colors.black),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 5),
                                                child: Text("${_produk.cart}"),
                                              )
                                            ]),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 17),
                                        child: Text(r"$xxx",
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20)),
                                      )
                                    ]),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 18),
                                  child: Divider(
                                    thickness: 1,
                                  ),
                                )
                              ],
                            );
                          }),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 17, vertical: 5),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery",
                              style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                            Text(r"$xxx",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700, fontSize: 20)),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 18, vertical: 8),
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 17),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("TOTAL",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: button)),
                            Text(r"$xxxx",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: button))
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    height: 312,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 23, horizontal: 17),
                          child: Text("Payment"),
                        ),
                        ListView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: payment.length,
                            itemBuilder: (ctx, position) {
                              var _pay = payment[position];
                              return Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 17),
                                            child: Text(
                                              "${_pay}",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  color: Colors.black),
                                            ),
                                          ),
                                          position == 3
                                              ? Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child: Icon(
                                                      Icons.circle_outlined),
                                                )
                                              : Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 20),
                                                  child:
                                                      Icon(Icons.chevron_right),
                                                )
                                        ]),
                                  ),
                                  position == 3
                                      ? Divider(color: Colors.white)
                                      : Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          child: Divider(
                                            thickness: 1,
                                          ),
                                        )
                                ],
                              );
                            }),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Container(
                  width: 430,
                  height: 170,
                  decoration: const BoxDecoration(
                      color: checkoutbiru,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(90),
                          topRight: Radius.circular(90)))),
              Positioned(
                  bottom: 70,
                  child: ButtonWidget(
                    title: "Place Order",
                    onPressedButton: () {},
                  ))
            ],
          )
        ],
      ),
    );
  }
}
