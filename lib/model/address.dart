import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AddressWidget extends StatelessWidget {
  const AddressWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text("Deliver to",
              style: GoogleFonts.roboto(
                  fontSize: 12, fontWeight: FontWeight.w500)),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.push_pin, color: Color(0xff6750A4), size: 18),
        ),
        Expanded(
          child: Text("Jl. Babakan ciamis no. 1000 kav. D10 kel...",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.roboto(
                  fontSize: 11, fontWeight: FontWeight.w500)),
        ),
        const Icon(Icons.chevron_right, size: 30)
      ],
    );
  }
}
