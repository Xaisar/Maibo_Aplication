import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';
import 'item/field_basic.dart';
import 'item/field_contact.dart';
import 'item/field_password.dart';

class RegisterView extends GetView<RegisterController> {
  RegisterView({Key? key}) : super(key: key);
  final registerc = RegisterController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blue,
        appBar: AppBar(
          backgroundColor: blue,
          elevation: 0,
          title: Text(
            'Sign up',
            style: GoogleFonts.dmSans(
                color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.only(top: 40, left: 25, right: 25),
                  width: Get.width,
                  height: Get.height * 0.885,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(40),
                          topEnd: Radius.circular(40))),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //Nama
                      FieldBasic(
                        name: "Nama",
                        control: registerc,
                      ),
                      //Email
                      FieldBasic(
                        name: "Email",
                        control: registerc,
                      ),
                      //Contact
                      FieldContact(name: "Contact", control: registerc),
                      //Password
                      FieldPassword(
                          name: "Password",
                          control: registerc,
                          mata: registerc.eye1),
                      //ConfrimPassword
                      FieldPassword(
                          name: "Confirm Password",
                          control: registerc,
                          mata: registerc.eye2),
                      //tombol
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ElevatedButton(
                                style: TextButton.styleFrom(
                                    backgroundColor: blue,
                                    elevation: 0,
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)))),
                                onPressed: () {},
                                child: Container(
                                  width: Get.width,
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 12),
                                  child: Text(
                                    "Register",
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.dmSans(
                                        fontSize: 22,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom))
            ],
          ),
        ));
  }
}
