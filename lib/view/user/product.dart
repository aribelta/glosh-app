import 'package:bigproject/model/color.dart';
import 'package:bigproject/model/component/appbar.dart';
import 'package:bigproject/model/detail.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({Key? key}) : super(key: key);

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(title: "Fresh Produce"),
        body: SingleChildScrollView(
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 19, vertical: 16),
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
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Wrap(
                      runSpacing: 10,
                      spacing: 20,
                      alignment: WrapAlignment.center,
                      children: [
                        for (var item in product) _cartItem(item),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }

  Widget _cartItem(Product _items) {
    return Container(
        width: MediaQuery.of(context).size.width / 2.5,
        height: 269,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(17)),
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
                      fontSize: 14, fontWeight: FontWeight.w500, color: ungu)),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 6, bottom: 16, right: 15, left: 15),
              child: Text("${_items.subtitle}",
                  style: TextStyle(
                      fontSize: 11, fontWeight: FontWeight.w500, color: plus)),
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
            )
          ],
        ));
  }
}
