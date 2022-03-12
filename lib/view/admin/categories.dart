import 'package:bigproject/model/button.dart';
import 'package:bigproject/model/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesWidget extends StatefulWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  State<CategoriesWidget> createState() => _CategoriesWidgetState();
}

class _CategoriesWidgetState extends State<CategoriesWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundbiru,
      appBar: AppBar(
        backgroundColor: button,
        title: Text("Categories"),
        leading: Icon(Icons.arrow_back),
        actions: [Icon(Icons.more_vert)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Your Products",
                  style: GoogleFonts.workSans(
                      textStyle:
                          TextStyle(fontWeight: FontWeight.w700, fontSize: 20)),
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
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: TextFormField(
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder:
                      OutlineInputBorder(borderSide: BorderSide(width: 1)),
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Categories"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, bottom: 28),
            child: ButtonWidget(title: "Add Category", onPressedButton: () {}),
          ),
          for (var i = 0; i <= 10; i++) Expanded(child: _loopcategory()),
        ],
      ),
    );
  }

  _loopcategory() {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      _categoryCard(),
      Icon(Icons.dehaze, color: Color(0xff478ECC))
    ]);
  }

  Widget _categoryCard() {
    return Container(
      height: 80,
      width: 305,
      child: Card(
        elevation: 0,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(
            color: Color(0xff70B2E2).withOpacity(1),
            width: 2,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Header",
                      style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 20)),
                    ),
                    Text("Subhead",
                        style: GoogleFonts.workSans(
                            textStyle: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                        )))
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 17),
              child: Icon(Icons.edit, color: Color(0xff70B2E2)),
            )
          ],
        ),
      ),
    );
  }
}
