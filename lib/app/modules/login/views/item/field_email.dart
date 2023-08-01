import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class FieldEmail extends GetView {
  final control;
  const FieldEmail({super.key, this.control});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text("Email",
                  textAlign: TextAlign.start,
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                control.login.email = value;
              },
              style: GoogleFonts.dmSans(fontSize: 14),
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 14, top: 9, bottom: 9),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  hintText: 'Input Email',
                  focusColor: blue),
            )
          ]),
    );
  }
}
