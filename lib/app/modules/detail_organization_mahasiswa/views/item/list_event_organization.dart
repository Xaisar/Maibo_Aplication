import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/app/routes/app_pages.dart';
import 'package:maibo/theme.dart';

class ListEventOrganization extends GetView {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 10,
      separatorBuilder: (context, index) {
        return Divider(
          height: 2,
          color: grey1,
        );
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Get.toNamed(Routes.DETAIL_EVENT_MAHASISWA);
          },
          child: Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Image(
                      height: 70,
                      width: 70,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/image2.jpg"),
                    ),
                    const SizedBox(width: 10),
                    SizedBox(
                      width: Get.width * 0.6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //pendaftaran
                          Text("Pendaftaran : 12 Juni - 14 Juli",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: true,
                              style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(height: 2),
                          //title
                          Text("Webinar Dengan Bersama Alumni",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              softWrap: true,
                              style: GoogleFonts.dmSans(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500)),
                          const SizedBox(height: 2),
                          //organization
                          Text(
                            " By HMJTI Poliwangi",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: GoogleFonts.dmSans(
                                color: grey3,
                                fontSize: 11,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: const BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.all(Radius.circular(8))),
                  child: Text(
                    "Lomba",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.dmSans(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
