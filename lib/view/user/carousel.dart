import 'package:bigproject/model/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({Key? key}) : super(key: key);

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [for (var i = 0; i < 10; i++) _carouselItem()],
          ),
        ),
        Text("See all promotion",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500, fontSize: 11, color: birumuda)),
      ],
    );
  }

  Widget _carouselItem() {
    return SizedBox(
      child: Card(
          color: birumuda,
          shadowColor: Colors.black,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
      height: 100,
      width: 366,
    );
  }
}
