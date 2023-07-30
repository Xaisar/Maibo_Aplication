import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../controllers/myorganization_mahasiswa_controller.dart';
import 'item/organization_item.dart';

class MyorganizationMahasiswaView
    extends GetView<MyorganizationMahasiswaController> {
  const MyorganizationMahasiswaView({Key? key}) : super(key: key);
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
      body: ListView.separated(
          itemCount: 5,
          separatorBuilder: (context, index) {
            return const Divider(height: 3);
          },
          itemBuilder: (context, index) {
            return const OrganizationItemView();
          }),
    );
  }
}
