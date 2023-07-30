import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

class PopularItemView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            // alignment: AlignmentDirectional.topStar,
            fit: StackFit.loose,
            children: [
              const Image(
                  height: 100,
                  width: 350,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/images/image2.jpg")),
              Padding(
                padding: const EdgeInsets.only(top: 5, left: 5),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(12))),
                  child: Text(
                    "Lomba",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              )
            ],
          ),
          Container(
            width: 350,
            padding: EdgeInsets.only(top: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //tanggal
                Text(
                  "Pendaftaran: 1 juni - 20 juni",
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.w500),
                ),

                //title
                Text(
                  "Lomba Esport Mobile Legends",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 2),
                //nama organisasi
                Text(
                  "by UKM Olahraga",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: GoogleFonts.dmSans(
                      color: grey3, fontSize: 12, fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 3),
                //deskripsi
                Text(
                  "Kami menyediakan tempat bagia anda untuk memulai perjuangan anda menjadi sebuah perjalanan yang akan di ingikan di land of dawn",
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 11,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
