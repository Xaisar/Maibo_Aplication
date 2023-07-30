import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class NodataView extends GetView {
  final text;
  const NodataView({Key? key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grey2,
      body: Center(
        child: Text(
          text,
          maxLines: 2,
          style: GoogleFonts.dmSans(
              color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
