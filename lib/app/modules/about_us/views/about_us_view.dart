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
        body: Container(
          width: Get.width,
          margin: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Container(
                width: Get.width,
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: grey1, width: 1.5))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: const AssetImage("assets/logos/logo1.png"),
                      height: Get.width * 0.4,
                      width: Get.width * 0.4,
                    ),
                    //nama
                    Text(
                      "M A I B O",
                      style: GoogleFonts.sairaStencilOne(
                          color: blue,
                          fontSize: 25,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Maibo aplikasi multi platform yang membantu anda untuk mengelola organisisasi yang anda miliki dan membantu organisasi anda melakukan branding dan pengenalan ke mahasiswa demi menarik minat dan bakat setiap mahasiswa \nMahasiswa dapat lebih mengenal organisasi yang ada sehingga dapat mengetahui minat dan mengasah bakat yang dimiliki di dalam organisasi ",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Kami berharap anda dapat mengembangkan minat dan bakat anda melalui aplikasi yang kami kembangkan ini",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "By Team Maibo",
                        overflow: TextOverflow.clip,
                        style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
