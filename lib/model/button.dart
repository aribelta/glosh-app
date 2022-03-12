import 'package:bigproject/model/color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

buttonplus() {
  return Container(
    color: Color(0xffff6750A4),
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
    child: Icon(Icons.add),
  );
}

class ButtonWidget extends StatelessWidget {
  final String title;
  const ButtonWidget(
      {Key? key, required this.title, required this.onPressedButton})
      : super(key: key);

  final VoidCallback onPressedButton;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: ElevatedButton(
            onPressed: onPressedButton,
            child: Container(
              child: Text(title,
                  style: GoogleFonts.workSans(
                      fontSize: 20, fontWeight: FontWeight.w700)),
              width: 320,
              height: 56,
              alignment: Alignment.center,
            ),
            style: ElevatedButton.styleFrom(
              primary: button,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
          ),
        ));
  }
}
