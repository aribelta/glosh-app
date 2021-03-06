import 'package:bigproject/controller/admin/controllerlogin.dart';
import 'package:bigproject/model/button.dart';
import 'package:bigproject/model/color.dart';
import 'package:bigproject/routes/navigator.dart';
import 'package:bigproject/view/user/mainhome.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  final _controllerLogin = Get.put(ControllerLogin());

  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ControllerLogin>(
          init: _controllerLogin,
          builder: (ControllerLogin c) {
            return SafeArea(
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
                                    fontWeight: FontWeight.w400,
                                    color: birumuda))),
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
                          controller: _controllerEmail,
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
                        controller: _controllerPassword,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: _controllerLogin.pass,
                        decoration: InputDecoration(
                            fillColor: birumuda,
                            labelText: "Password",
                            labelStyle: TextStyle(fontSize: 14),
                            suffixIcon: InkWell(
                                onTap: () => _controllerLogin
                                    .obscurePassword(_controllerLogin.pass),
                                child: _controllerLogin.pass
                                    ? Icon(Icons.remove_red_eye_sharp)
                                    : Icon(Icons.visibility_off)),
                            counterText: "Forgot your password?",
                            counterStyle: TextStyle(
                                color: birumuda,
                                decoration: TextDecoration.underline)),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: InkWell(
                              onTap: () => _controllerLogin
                                  .changesCheckbox(_controllerLogin.checkBox),
                              child: _controllerLogin.checkBox
                                  ? Icon(Icons.check_box_outlined)
                                  : Icon(Icons.check_box_outline_blank)),
                        ),
                        Text("Masuk Sebagai Admin ?")
                      ],
                    ),
                    SizedBox(height: 170),
                    ButtonWidget(
                        title: "Login",
                        onPressedButton: () async {
                          print("email :${_controllerEmail.text}");
                          print(" pass :${_controllerPassword.text}");

                          if (!_controllerLogin.checkBox) {
                            final response =
                                await _controllerLogin.postLoginCustomer(
                              email: _controllerEmail.text,
                              password: _controllerPassword.text,
                            );
                            if (response != null) {
                              _controllerLogin
                                  .setAllSharedPreferencesCustomer(response);

                              Get.offNamed(Navi.home);
                            } else {
                              Fluttertoast.showToast(
                                  msg: "Email atau Password Salah");
                            }
                          } else {
                            final response = await _controllerLogin.postLogin(
                              email: _controllerEmail.text,
                              password: _controllerPassword.text,
                            );
                            if (response != null) {
                              _controllerLogin
                                  .setAllSharedPreferences(response);
                              Get.offAllNamed(Navi.myshop);
                            } else {
                              Fluttertoast.showToast(
                                  msg: "Email atau Password Salah");
                            }
                          }
                          // if (response != null) {
                          //   if (response.user?.role == "member" &&
                          //       checkBox == false) {
                          //     Get.offNamed(Navi.home);
                          //   } else if (response.user?.role == "member" &&
                          //       checkBox == true) {
                          //     Get.toNamed(Navi.myshop);
                          //   } else {
                          //     Fluttertoast.showToast(
                          //         msg: "Email atau Password Salah");
                          //   }
                          // } else {
                          //   Fluttertoast.showToast(
                          //       msg: "Terjadi Masalah pada Koneksi");
                          // }
                          // Get.offNamed("/home");
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
                            Get.toNamed(Navi.register);
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
            );
          }),
    );
  }
}
