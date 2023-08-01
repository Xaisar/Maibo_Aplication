import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:maibo/my_flutter_app_icons.dart';
import 'package:maibo/app/routes/app_pages.dart';
import 'package:get/get.dart';

import '../../../../data/models/postingan_model.dart';

class PostItemView extends GetView {
  Postingan? postingan;
  PostItemView({super.key, this.postingan});
  List<Color> warna = [Colors.red, grey1];

  @override
  Widget build(BuildContext context) {
    RxInt i = 1.obs;
    var nama_organisasi = postingan?.organization?.nama;
    var gambar_organisasi = postingan?.organization?.gambar;
    var gambar = postingan?.gambar;
    var deskripsi = postingan?.deskripsi;
    var like = postingan?.like?.length;
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
        //deskripsi
        Container(
          width: Get.width,
          color: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: Text("Disukai oleh $like orang ",
              textAlign: TextAlign.left,
              // overflow: TextOverflow.ellipsis,
              // maxLines: 2,
              style: GoogleFonts.dmSans(color: Colors.black, fontSize: 13)),
        ),
        //deskripsi
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.DETAIL_POST_MAHASISWA);
          },
          child: Container(
            color: Colors.white,
            width: Get.width,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text("$deskripsi",
                textAlign: TextAlign.left,
                // overflow: TextOverflow.ellipsis,
                // maxLines: 2,
                style: GoogleFonts.dmSans(color: Colors.black, fontSize: 13)),
          ),
        ),
        Container(
            color: Colors.white,
            width: Get.width,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            child: Text("Semua Komentar",
                textAlign: TextAlign.left,
                // overflow: TextOverflow.ellipsis,
                // maxLines: 2,
                style: GoogleFonts.dmSans(color: Colors.black, fontSize: 13))),
        //chat
        Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            width: Get.width,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(top: BorderSide(color: grey1, width: 1))),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage("assets/images/image1.jpg"),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: TextField(
                    keyboardType: TextInputType.text,
                    onChanged: (value) {},
                    onSubmitted: (value) {},
                    style: GoogleFonts.dmSans(fontSize: 14),
                    decoration: InputDecoration(
                        hintText: 'Balas Pemilik Akun', focusColor: blue),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
