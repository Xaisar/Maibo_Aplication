import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

class TextView extends GetView {
  final title;
  final text;
  const TextView({super.key, this.title, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: GoogleFonts.dmSans(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500)),
        Container(
          padding: const EdgeInsets.only(left: 15, top: 8, bottom: 8),
          decoration: BoxDecoration(
              border: Border.all(color: grey1, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(12))),
          child: Text(text,
              style: GoogleFonts.dmSans(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal)),
        )
      ],
    );
  }
}
