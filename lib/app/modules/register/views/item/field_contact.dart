import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class FieldContact extends GetView {
  final name;
  final control;
  const FieldContact({super.key, this.name, this.control});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(name,
                  textAlign: TextAlign.start,
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
            ),
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value) {},
              style: GoogleFonts.dmSans(fontSize: 14),
              decoration: InputDecoration(
                  contentPadding:
                      const EdgeInsets.only(left: 14, top: 9, bottom: 9),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(9))),
                  hintText: 'Example 62xxxxxxxxxxxxxx',
                  focusColor: blue),
            )
          ]),
    );
  }
}
