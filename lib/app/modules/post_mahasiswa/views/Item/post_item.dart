import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class PostItemView extends GetView {
  const PostItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //identity
        Container(
          color: grey2,
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      backgroundImage: AssetImage("assets/images/image2.jpg")),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "UKM Robotika",
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  )
                ],
              ),
              Text(
                "12 Januari 2023",
                style: GoogleFonts.dmSans(
                    color: grey3, fontSize: 12, fontWeight: FontWeight.normal),
              ),
            ],
          ),
        ),
        //gambar
        Image(
          fit: BoxFit.fitWidth,
          image: const AssetImage("assets/images/gambarw.jpg"),
          width: Get.width,
          filterQuality: FilterQuality.high,
        ),
        //deskripsi
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text(
              "Hallo semuanya saya ada di sini jadi bisa kah anda membuat kan saya sesuatu yang bagus dan menarik",
              textAlign: TextAlign.left,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 2,
              style: GoogleFonts.dmSans(color: Colors.black, fontSize: 12)),
        )
      ],
    );
  }
}
