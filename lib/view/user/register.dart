import 'package:bigproject/model/button.dart';
import 'package:bigproject/model/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  bool pass = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 85),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text("Signing Up",
                      style: GoogleFonts.workSans(
                          textStyle: TextStyle(color: birumuda))),
                ],
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text("Welcome To Glosh",
                      style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                              color: button,
                              fontWeight: FontWeight.w700,
                              fontSize: 20))),
                ],
              ),
              SizedBox(height: 37),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Username",
                      labelStyle: TextStyle(fontSize: 14)),
                ),
              ),
              SizedBox(height: 21),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: "E-mail", labelStyle: TextStyle(fontSize: 10)),
                ),
              ),
              SizedBox(height: 21),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: pass,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(fontSize: 10),
                    suffixIcon: InkWell(
                        onTap: () {
                          if (pass == true) {
                            pass = false;
                          } else {
                            pass = true;
                          }
                          setState(() {});
                        },
                        child: Icon(Icons.remove_red_eye_sharp)),
                  ),
                ),
              ),
              SizedBox(height: 17),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 2, top: 8),
                      child: Text(
                        "By continuing you agree to our",
                        style: TextStyle(fontWeight: FontWeight.w200),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, right: 10),
                      child: Text(
                        "Terms of service",
                        style: TextStyle(color: birumuda),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 8, right: 2, top: 8, bottom: 8),
                      child: Text("and",
                          style: TextStyle(fontWeight: FontWeight.w200)),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 8, right: 10, bottom: 8),
                      child: Text(
                        " Privacy Policy",
                        style: TextStyle(color: birumuda),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 58),
              ButtonWidget(
                title: "Sign Up",
                onPressedButton: () {},
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15, right: 5, bottom: 10),
                    child: Text("Already have an account?",
                        style: TextStyle(color: birumuda)),
                  ),
                  InkWell(
                    onTap: () {
                      Get.back();
                      // Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 10),
                      child: Text("Log in here!",
                          style: TextStyle(
                              color: birumuda,
                              decoration: TextDecoration.underline)),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
