import 'package:bigproject/model/button.dart';
import 'package:bigproject/model/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
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
              SizedBox(
                height: 85,
              ),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text("Logging In",
                      style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w400, color: birumuda))),
                ],
              ),
              SizedBox(height: 17),
              Row(
                children: [
                  SizedBox(width: 30),
                  Text("Welcome Back!",
                      style: GoogleFonts.workSans(
                          textStyle: TextStyle(
                              fontWeight: FontWeight.w700,
                              color: button,
                              fontSize: 20))),
                ],
              ),
              SizedBox(
                height: 37,
              ),
              SizedBox(
                width: 350,
                child: Container(
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(fontSize: 14)),
                  ),
                ),
              ),
              SizedBox(height: 29),
              SizedBox(
                width: 350,
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: pass,
                  decoration: InputDecoration(
                      fillColor: birumuda,
                      labelText: "Password",
                      labelStyle: TextStyle(fontSize: 14),
                      suffixIcon: InkWell(
                          onTap: () {
                            if (pass == true) {
                              pass = false;
                            } else {
                              pass = true;
                            }
                            setState(() {});
                          },
                          child: pass == true
                              ? Icon(Icons.remove_red_eye_sharp)
                              : Icon(Icons.visibility_off)),
                      counterText: "Forgot your password?",
                      counterStyle: TextStyle(
                          color: birumuda,
                          decoration: TextDecoration.underline)),
                ),
              ),
              SizedBox(height: 170),
              ButtonWidget(
                  title: "Login",
                  onPressedButton: () {
                    Get.offNamed("/home");
                    // Navigator.pushReplacementNamed(context, "/home");
                  }),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 15, right: 5),
                    child: Text("Don't have an account yet?",
                        style: TextStyle(color: birumuda)),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed("/register");
                      // Navigator.pushNamed(context, "/register");
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Text("Sign up here!",
                          style: TextStyle(
                              color: birumuda,
                              decoration: TextDecoration.underline)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
