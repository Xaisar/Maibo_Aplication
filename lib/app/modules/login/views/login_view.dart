import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';
import 'item/field_email.dart';
import 'item/field_password.dart';

class LoginView extends GetView<LoginController> {
  LoginView({Key? key}) : super(key: key);
  final loginc = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: blue,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: Get.width,
              height: Get.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: Get.width * 0.45,
                    height: Get.width * 0.45,
                    child: Image.asset("assets/logos/logo2.png"),
                  ),
                  Text(
                    "M A I B O",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.sairaStencilOne(
                        color: Colors.white, fontSize: 32),
                  )
                ],
              ),
            ),
            Container(
              width: Get.width,
              height: Get.height * 0.6,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.only(
                      topStart: Radius.circular(40),
                      topEnd: Radius.circular(40))), 
              child: Padding(
                padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Sign in",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                                color: blue,
                                fontSize: 24,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                    //text field email
                    FieldEmail(
                      control: loginc,
                    ),
                    //text field password
                    FieldPassword(
                      control: loginc,
                    ),
                    //button login
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                          style: TextButton.styleFrom(
                              backgroundColor: blue,
                              elevation: 0,
                              shape: const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12)))),
                          onPressed: () {
                            // Get.offNamed(Routes.HOME_MAHASISWA);
                            print(loginc.login.email);
                            print(loginc.login.password);
                          },
                          child: Container(
                            width: Get.width,
                            margin: const EdgeInsets.symmetric(vertical: 12),
                            child: Text(
                              "Login",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Don't have a account?",
                              style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500)),
                          TextButton(
                              onPressed: () {
                                Get.toNamed(Routes.REGISTER);
                              },
                              style: TextButton.styleFrom(),
                              // minimumSize: const Size(40, 20)),
                              child: Text(
                                "Sign Up",
                                style: GoogleFonts.dmSans(
                                    color: Colors.yellow[600],
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom))
          ],
        ),
      ),
    );
  }
}
