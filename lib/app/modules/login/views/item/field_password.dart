import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class FieldPassword extends GetView {
  final control;
  const FieldPassword({super.key, this.control});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 6),
                  child: Text("Password",
                      textAlign: TextAlign.start,
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {
                    control.login.password = value;
                  },
                  obscureText: control.eye.value,
                  style: GoogleFonts.dmSans(fontSize: 14),
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            control.togglePasswordVisibility();
                          },
                          child: Icon(
                            control.eye.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: control.eye.value ? Colors.grey : blue,
                          )),
                      contentPadding:
                          const EdgeInsets.only(left: 14, top: 9, bottom: 9),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      hintText: 'Input Password',
                      focusColor: blue),
                ),
                // Row(
                //     mainAxisAlignment: MainAxisAlignment.end,
                //     crossAxisAlignment: CrossAxisAlignment.end,
                //     children: [
                //       TextButton(
                //           style: TextButton.styleFrom(
                //               minimumSize: const Size(114.00, 20.0)),
                //           onPressed: () {},
                //           child: Text(
                //             "Forget Password?",
                //             style: GoogleFonts.dmSans(
                //                 fontSize: 14,
                //                 decoration: TextDecoration.underline),
                //           ))
                //     ]),
              ]),
        ));
  }
}
