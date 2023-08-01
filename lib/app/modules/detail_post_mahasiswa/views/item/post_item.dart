import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:maibo/my_flutter_app_icons.dart';

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
          padding:
              const EdgeInsets.only(top: 8, left: 15, right: 15, bottom: 8),
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
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: grey1, width: 1))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    MyFlutterApp.heart,
                    size: 20,
                    color: grey1,
                  )),
              const SizedBox(
                width: 15,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.chat,
                    size: 20,
                    color: grey1,
                  )),
            ],
          ),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text("Disukai oleh ",
              textAlign: TextAlign.left,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 2,
              style: GoogleFonts.dmSans(color: Colors.black, fontSize: 13)),
        ),
        //deskripsi
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text(
              "UKM Robotika Hallo semuanya saya ada di sini jadi bisa kah anda membuat kan saya sesuatu yang bagus dan menarik",
              textAlign: TextAlign.left,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 2,
              style: GoogleFonts.dmSans(color: Colors.black, fontSize: 13)),
        ),
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text("Semua Komentar",
              textAlign: TextAlign.left,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 2,
              style: GoogleFonts.dmSans(color: Colors.black, fontSize: 13)),
        ),
      ],
    );
  }
}
