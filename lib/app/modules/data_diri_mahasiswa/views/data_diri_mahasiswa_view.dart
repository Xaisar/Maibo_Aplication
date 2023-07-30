import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../controllers/data_diri_mahasiswa_controller.dart';

class DataDiriMahasiswaView extends GetView<DataDiriMahasiswaController> {
  const DataDiriMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(children: [
              Text("Data Mahasiswa",
                  style: GoogleFonts.dmSans(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 15,
              ),
            ])),
      ),
    );
  }
}
