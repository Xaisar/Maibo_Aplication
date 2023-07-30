import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:get/get.dart';

import '../controllers/full_image_controller.dart';

class FullImageView extends GetView<FullImageController> {
  const FullImageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
            )),
        title: Text("Back",
            style: GoogleFonts.dmSans(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Center(
          child: Image(
              width: Get.width,
              fit: BoxFit.fitWidth,
              image: const AssetImage("assets/images/image2.jpg"))),
    );
  }
}
