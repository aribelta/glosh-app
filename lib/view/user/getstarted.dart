import 'package:bigproject/model/button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedWidget extends StatefulWidget {
  const GetStartedWidget({Key? key}) : super(key: key);

  final String getstarted = "/getstarted";

  @override
  _GetStartedWidgetState createState() => _GetStartedWidgetState();
}

class _GetStartedWidgetState extends State<GetStartedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              "images/books.png",
              fit: BoxFit.cover,
            ),
            // decoration: const BoxDecoration(
            //     image: DecorationImage(
            //         image: AssetImage("images/unsplash.png"),
            //         fit: BoxFit.cover)),
          ),
          Positioned.fill(
            child: Container(
              color: Colors.black12.withOpacity(0.3),
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset("images/Glos.png"),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Belanja Kebutuhan sehari-hari\n jadi lebih mudah",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.roboto(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 100,
            child: ButtonWidget(
              title: "Get Started",
              onPressedButton: () {
                Get.offNamed("/login");
                // Navigator.pushReplacementNamed(context, "/login");
              },
            ),
          )
          // child: SizedBox(
          //     width: MediaQuery.of(context).size.width,
          //     child: Center(
          //       child: ElevatedButton(
          //         onPressed: () {
          //           Navigator.pushReplacementNamed(context, "/login");
          //         },
          //         child: Container(
          //           child: Text("Get Started"),
          //           width: 300,
          //           height: 56,
          //           alignment: Alignment.center,
          //         ),
          //         style: ElevatedButton.styleFrom(
          //           primary: Color(0xffff6750A4),
          //           shape: RoundedRectangleBorder(
          //             borderRadius: BorderRadius.circular(20),
          //           ),
          //         ),
          //       ),
          //     ))
        ],
      ),
    );
  }
}
