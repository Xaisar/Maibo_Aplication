import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../controllers/about_us_controller.dart';

class AboutUsView extends GetView<AboutUsController> {
  const AboutUsView({Key? key}) : super(key: key);
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
      body: const Center(
        child: Text(
          'AboutUsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
