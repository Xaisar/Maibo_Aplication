import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../controllers/detail_event_mahasiswa_controller.dart';

class DetailEventMahasiswaView extends GetView<DetailEventMahasiswaController> {
  const DetailEventMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                  child: Image.network(
                    "http://192.168.1.9:8080/api/event-image/1690642112_64c526c0ce25c.Explore%20Your%20Skill%20Mind%20and%20Talent%20With%20Study%20Club%20Informatics.jpg",
                    height: 200,
                    width: Get.width,
                    fit: BoxFit.cover,

                    // image:
                    //     const AssetImage("assets/images/Gambarwhatsapp.jpg")
                  ),
                ),
                Image.network(
                  "http://192.168.1.9:8080/api/event-image/1690642112_64c526c0ce25c.Explore%20Your%20Skill%20Mind%20and%20Talent%20With%20Study%20Club%20Informatics.jpg",
                  height: 200,
                  width: Get.width,
                  fit: BoxFit.contain,
                  filterQuality: FilterQuality.high,
                  // image:
                  //     const AssetImage("assets/images/Gambarwhatsapp.jpg")
                ),
                IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 20,
                      child: Icon(
                        Icons.photo_size_select_large_rounded,
                        size: 20,
                        color: Colors.black,
                      ),
                    ))
              ],
            ),
            //indentity
            Container(
              color: grey2,
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 15,
                          backgroundImage:
                              AssetImage("assets/images/image2.jpg")),
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
                ],
              ),
            ),
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration:
                    BoxDecoration(border: Border.all(color: grey1, width: 1)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        "Ini adalah sebuah lomba untuk mengambil sebuah harapan dan sebuah keinginan yang kita ingin kan",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Pendaftaran : 12 Juni - 18 Maret",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                            Text("Acara : 25 Juni - 13 Desember",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(8))),
                          child: Text(
                            "Lomba",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.dmSans(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
            Expanded(
                child: Stack(
              fit: StackFit.loose,
              // alignment: Alignment.bottomCenter,
              children: [
                SingleChildScrollView(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 60),
                  child: Text(
                      "Kami sudah membuat acara yang sangat spektakuler\nharap bersama kami mewujudkan idaman kami\n s\n a\n \n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n s\n sAYA",
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.normal)),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 55,
                    width: Get.width,
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border(top: BorderSide(color: grey1, width: 1))),
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            elevation: 0,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)))),
                        child: Text(
                          "Daftar",
                          style: GoogleFonts.dmSans(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        )),
                  ),
                )
              ],
            ))
          ],
        ));
  }
}
