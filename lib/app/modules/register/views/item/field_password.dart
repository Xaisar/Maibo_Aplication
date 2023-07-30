import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class FieldPassword extends GetView {
  final name;
  final control;
  final mata;
  const FieldPassword({super.key, this.name, this.control, this.mata});

  @override
  Widget build(BuildContext context) {
    return Obx(() => Padding(
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
                  keyboardType: TextInputType.visiblePassword,
                  onChanged: (value) {},
                  obscureText: mata.value,
                  style: GoogleFonts.dmSans(fontSize: 14),
                  decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                          onTap: () {
                            control.togglePasswordVisibility(mata);
                          },
                          child: Icon(
                            mata.value
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: mata.value ? Colors.grey : blue,
                          )),
                      contentPadding:
                          const EdgeInsets.only(left: 14, top: 9, bottom: 9),
                      border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(9))),
                      hintText: name,
                      focusColor: blue),
                ),
              ]),
        ));
  }
}
