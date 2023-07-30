import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class SplashscreenView extends GetView {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: blue,
        body: Stack(fit: StackFit.expand, children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  "by team MAIBO",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width * 0.6,
                height: Get.width * 0.6,
                child: Image.asset("assets/logos/logo2.png"),
              ),
              Text(
                "M A I B O",
                textAlign: TextAlign.center,
                style: GoogleFonts.sairaStencilOne(
                    color: Colors.white, fontSize: 40),
              )
            ],
          )
        ]));
  }
}
