import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/app/routes/app_pages.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../controllers/myaccount_mahasiswa_controller.dart';
import 'item/list_item_menu.dart';
import 'item/list_item_umum.dart';

class MyaccountMahasiswaView extends GetView<MyaccountMahasiswaController> {
  const MyaccountMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey2,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //identity
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(bottom: BorderSide(color: grey1, width: 2))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage("assets/images/image2.jpg")),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              //nama
                              Text(
                                "Xavier Is'ad Ariel",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.dmSans(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                              //email
                              const SizedBox(height: 10),
                              Text(
                                "arilex36@gmail.com",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: GoogleFonts.dmSans(
                                    color: grey3,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //Menu
            Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(bottom: BorderSide(color: grey1, width: 2))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Menu",
                        style: GoogleFonts.dmSans(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 15),
                    //akun
                    GestureDetector(
                        onTap: () {},
                        child: const ListItemMenu(
                            icon: "assets/icons/User.png",
                            name: "Kelola Akun")),
                    const SizedBox(height: 10),
                    //data pribadi
                    GestureDetector(
                        onTap: () {},
                        child: const ListItemMenu(
                            icon: "assets/icons/Pribadi.png",
                            name: "Data Pribadi")),
                    const SizedBox(height: 10),
                    //My Organization
                    GestureDetector(
                        onTap: () {},
                        child: const ListItemMenu(
                            icon: "assets/icons/Organization.png",
                            name: "My Organization")),
                    const SizedBox(height: 10),
                    //Riwayat Event
                    GestureDetector(
                        onTap: () {},
                        child: const ListItemMenu(
                            icon: "assets/icons/Riwayat.png",
                            name: "Riwayat Event"))
                  ],
                )),
            //umum
            Expanded(
                child: Container(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Umum",
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 15),
                  //versi
                  const ListItemUmum(
                      icon: "assets/icons/Play.png", name: "Versi: $versi"),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      Get.toNamed(Routes.ABOUT_US);
                    },
                    child: const ListItemUmum(
                        icon: "assets/icons/About.png", name: "Tentang kami"),
                  ),
                  const SizedBox(height: 10),
                  //tombol Log out
                  ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.LOGIN);
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 35),
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12)))),
                    child: Text(
                      "Log out",
                      style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ))
          ],
        ));
  }
}
