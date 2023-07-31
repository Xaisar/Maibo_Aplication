import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import '../controllers/detail_organization_mahasiswa_controller.dart';
import 'item/list_event_organization.dart';
import 'item/list_post_organization.dart';
import 'item/list_rekrutmen_organization.dart';
import 'item/organization_identity_view.dart';

class DetailOrganizationMahasiswaView
    extends GetView<DetailOrganizationMahasiswaController> {
  DetailOrganizationMahasiswaView({Key? key}) : super(key: key);
  final detailorganizationmahasiswac = DetailOrganizationMahasiswaController();
  List<Widget> body = [
    ListPostOrganization(),
    ListEventOrganization(),
    ListRekrutmenOrganization()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //indentitas
            OrganizationIdentityView(),
            //tombol
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //post
                GestureDetector(
                  onTap: () {
                    detailorganizationmahasiswac.posisi.value = 0;
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.335,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: (detailorganizationmahasiswac.posisi.value == 0
                            ? Border(
                                bottom: BorderSide(color: blue, width: 4),
                                top: BorderSide(color: blue, width: 1),
                                left: BorderSide(color: blue, width: 1),
                                right: BorderSide(color: blue, width: 1),
                              )
                            : Border(
                                bottom: BorderSide(color: grey1, width: 1),
                                top: BorderSide(color: grey1, width: 1),
                                left: BorderSide(color: grey1, width: 1),
                                right: BorderSide(color: grey1, width: 1),
                              ))),
                    child: Text(
                      "Postingan",
                      style: GoogleFonts.dmSans(
                          color: (detailorganizationmahasiswac.posisi.value == 0
                              ? blue
                              : grey1),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                //event
                GestureDetector(
                  onTap: () {
                    detailorganizationmahasiswac.posisi.value = 1;
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.33,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: (detailorganizationmahasiswac.posisi.value == 1
                            ? Border(
                                bottom: BorderSide(color: blue, width: 4),
                                top: BorderSide(color: blue, width: 1),
                                left: BorderSide(color: blue, width: 1),
                                right: BorderSide(color: blue, width: 1),
                              )
                            : Border(
                                bottom: BorderSide(color: grey1, width: 1),
                                top: BorderSide(color: grey1, width: 1),
                                left: BorderSide(color: grey1, width: 1),
                                right: BorderSide(color: grey1, width: 1),
                              ))),
                    child: Text(
                      "Event",
                      style: GoogleFonts.dmSans(
                          color: (detailorganizationmahasiswac.posisi.value == 1
                              ? blue
                              : grey1),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                //rekrutment
                GestureDetector(
                  onTap: () {
                    detailorganizationmahasiswac.posisi.value = 2;
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: Get.width * 0.335,
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: (detailorganizationmahasiswac.posisi.value == 2
                            ? Border(
                                bottom: BorderSide(color: blue, width: 4),
                                top: BorderSide(color: blue, width: 1),
                                left: BorderSide(color: blue, width: 1),
                                right: BorderSide(color: blue, width: 1),
                              )
                            : Border(
                                bottom: BorderSide(color: grey1, width: 1),
                                top: BorderSide(color: grey1, width: 1),
                                left: BorderSide(color: grey1, width: 1),
                                right: BorderSide(color: grey1, width: 1),
                              ))),
                    child: Text(
                      "Rekrutment",
                      style: GoogleFonts.dmSans(
                          color: (detailorganizationmahasiswac.posisi.value == 2
                              ? blue
                              : grey1),
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Center(
                    child: (detailorganizationmahasiswac.posisi.value == 0
                        ? body[detailorganizationmahasiswac.posisi.value]
                        : detailorganizationmahasiswac.posisi.value == 1
                            ? body[detailorganizationmahasiswac.posisi.value]
                            : body[detailorganizationmahasiswac.posisi.value])))
            //body
          ],
        )));
  }
}
