import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../routes/app_pages.dart';
import 'item/field_password.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  ChangePasswordView({Key? key}) : super(key: key);
  final changepasswordc = ChangePasswordController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey2,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.white,
              )),
          title: Text("Back",
              style: GoogleFonts.dmSans(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          backgroundColor: blue,
          elevation: 0,
        ),
        body: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FieldPassword(
                  name: "Old Password",
                  control: changepasswordc,
                  mata: changepasswordc.eye1,
                ),
                FieldPassword(
                  name: "New Password",
                  control: changepasswordc,
                  mata: changepasswordc.eye2,
                ),
                FieldPassword(
                  name: "Confirm Passsword",
                  control: changepasswordc,
                  mata: changepasswordc.eye3,
                ),
                ElevatedButton(
                  onPressed: () {
                    // Get.offAllNamed(Routes.CHANGE_PASSWORD);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      elevation: 0,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 35),
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12)))),
                  child: Text(
                    "Simpan",
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            )));
  }
}
