import 'package:bigproject/controller/controllermyshop.dart';
import 'package:bigproject/model/color.dart';
import 'package:bigproject/model/detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MyShopWidget extends StatefulWidget {
  const MyShopWidget({Key? key}) : super(key: key);

  @override
  _MyShopWidgetState createState() => _MyShopWidgetState();
}

class _MyShopWidgetState extends State<MyShopWidget> {
  var _controllermyshop = Get.put(ControllerMyShop());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        backgroundColor: button,
        title: Text("My Shop"),
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.mail)],
      ),
      body: GetBuilder<ControllerMyShop>(
          init: _controllermyshop,
          builder: (ControllerMyShop c) {
            return ListView(
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: 158,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CircleAvatar(
                                maxRadius: 40,
                                backgroundImage:
                                    AssetImage("images/apple.png")),
                            Column(
                              children: [
                                Row(
                                  children: [
                                    Text("${c.namaToko}",
                                        style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 20,
                                                color: namatoko))),
                                    Icon(
                                      Icons.verified_outlined,
                                      color: namatoko,
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.stars_outlined,
                                      color: namatoko,
                                    ),
                                    Text("${c.jumlahFollowers} Followers",
                                        style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                        )))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.insights_outlined,
                                      color: namatoko,
                                    ),
                                    Text("${c.jumlahVisit} Visits a day",
                                        style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                        )))
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [for (int i = 1; i <= 35; i++) _items()],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Sales",
                                style: GoogleFonts.workSans(
                                    textStyle: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 20)),
                              ),
                              Text("History",
                                  style: GoogleFonts.workSans(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 13,
                                          color: namatoko))),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: SizedBox(
                                height: 100,
                                width: 120,
                                child: OutlinedButton(
                                    onPressed: () {},
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child:
                                                Icon(Icons.inventory, size: 27),
                                          ),
                                          Text("New Order"),
                                        ]),
                                    style: OutlinedButton.styleFrom(
                                        side: BorderSide(color: birumuda),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)))),
                              ),
                            ),
                            SizedBox(width: 20),
                            SizedBox(
                              height: 100,
                              width: 150,
                              child: OutlinedButton(
                                  onPressed: () {},
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: SizedBox(
                                              height: 24,
                                              child: Icon(Icons.local_shipping,
                                                  size: 27)),
                                        ),
                                        Text("Ready to Deliver"),
                                      ]),
                                  style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: birumuda),
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)))),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 346,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 14, vertical: 11),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Your Products",
                                  style: GoogleFonts.workSans(
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20)),
                                ),
                                InkWell(
                                  onTap: () => Get.toNamed("/product"),
                                  child: Text("See All (120 Products)",
                                      style: GoogleFonts.workSans(
                                          textStyle: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 13,
                                              color: namatoko))),
                                )
                              ]),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 173,
                                height: 269,
                                child: Card(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20)),
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
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          30)),
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
                              ),
                              SizedBox(width: 8),
                              Wrap(
                                  runSpacing: 10,
                                  spacing: 20,
                                  alignment: WrapAlignment.center,
                                  children: [
                                    for (var item in c.listProduct)
                                      _cartItem(item)
                                  ])
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 183,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14, top: 11),
                          child: Text("Buyer",
                              style: GoogleFonts.workSans(
                                  textStyle: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Colors.black))),
                        ),
                        Divider(thickness: 1, color: Color(0xffEADDFF)),
                        ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            primary: false,
                            shrinkWrap: true,
                            itemCount: buyer.length,
                            itemBuilder: (ctx, position) {
                              var _buyy = buyer[position];
                              return Expanded(
                                child: Column(
                                  children: [
                                    Row(children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 13),
                                        child: _buyy.iconbuy,
                                      ),
                                      Text(
                                        _buyy.buy,
                                        style: TextStyle(color: ikon),
                                      ),
                                    ]),
                                    position == 2
                                        ? Divider(color: Colors.white)
                                        : Divider(
                                            thickness: 1,
                                            color: Color(0xffEADDFF))
                                  ],
                                ),
                              );
                            })
                      ],
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }

  Widget _items() {
    return Row(children: [
      Text(
        "- ",
        style: TextStyle(fontSize: 20, color: checkoutbiru),
      )
    ]);
  }

  Widget _cartItem(Product _items) {
    return Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 258,
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
                  child: Image.asset(_items.image),
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
              child: Text("${_items.subtitle}",
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
              ],
            )
          ],
        ));
  }
}
