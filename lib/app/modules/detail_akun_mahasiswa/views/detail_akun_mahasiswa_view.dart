import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/detail_akun_mahasiswa_controller.dart';
import 'item/text_view.dart';

class DetailAkunMahasiswaView extends GetView<DetailAkunMahasiswaController> {
  const DetailAkunMahasiswaView({Key? key}) : super(key: key);
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
          margin: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(12))),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: grey1, width: 1.5))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CircleAvatar(
                        radius: 50, backgroundImage: NetworkImage("")),
                    const SizedBox(height: 15),
                    //nama
                    Text(
                      "",
                      style: GoogleFonts.dmSans(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(color: grey1, width: 1.5))),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //email
                    TextView(
                      title: "Email",
                      text: "",
                    ),
                    SizedBox(height: 5),
                    //contact
                    TextView(
                      title: "Contact",
                      text: "",
                    ),
                    SizedBox(height: 5),
                    //type
                    TextView(
                      title: "Type User",
                      text: "",
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.offAllNamed(Routes.CHANGE_PASSWORD);
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
                      "Change Password",
                      style: GoogleFonts.dmSans(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ))
            ],
          ),
        ));
  }
}
