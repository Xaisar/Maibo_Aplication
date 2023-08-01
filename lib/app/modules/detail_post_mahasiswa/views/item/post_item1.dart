import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/app/data/models/postingan_model.dart';
import 'package:maibo/theme.dart';
import 'package:maibo/my_flutter_app_icons.dart';

import 'package:get/get.dart';

// ignore: must_be_immutable
class ItemView extends GetView {
  Postingan? post;
  ItemView({super.key, this.post});
  List<Color> warna = [Colors.red, grey1];

  @override
  Widget build(BuildContext context) {
    RxInt i = 1.obs;
    var nama_organisasi = post?.organization?.nama;
    var gambar_organisasi = post?.organization?.gambar;
    var gambar = post?.gambar;
    var deskripsi = post?.deskripsi;
    var like = post?.like?.length;
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
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 15,
                      backgroundImage: AssetImage("$gambar_organisasi")),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "$nama_organisasi",
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
          image: AssetImage("$gambar"),
          width: Get.width,
          filterQuality: FilterQuality.high,
        ),
        Container(
          width: Get.width,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border(bottom: BorderSide(color: grey1, width: 1))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Obx(() => IconButton(
                  onPressed: () {
                    if (i.value == 1) {
                      i.value = 0;
                    } else {
                      i.value = 1;
                    }
                  },
                  icon: Icon(
                    MyFlutterApp.heart,
                    size: 20,
                    color: warna[i.value],
                  ))),
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
          width: Get.width,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text("Disukai oleh $like Orang",
              textAlign: TextAlign.left,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 2,
              style: GoogleFonts.dmSans(color: Colors.black, fontSize: 13)),
        ),
        //deskripsi
        Container(
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text("Pelatihan membuat robot avoid",
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
