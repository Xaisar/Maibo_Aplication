import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../../Event_List_Mahasiswa/views/event_list_mahasiswa_view.dart';
import '../../rekrutmen_list_mahasiswa/views/rekrutmen_list_mahasiswa_view.dart';
import '../controllers/event_mahasiswa_controller.dart';
import 'item/popular_item.dart';

class EventMahasiswaView extends GetView<EventMahasiswaController> {
  const EventMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(const Duration(seconds: 5));
          },
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                  child: Text(
                    "Popular Event",
                    style: GoogleFonts.dmSans(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Flexible(
                  flex: 4,
                  fit: FlexFit.loose,
                  child: Container(
                    margin: const EdgeInsets.fromLTRB(15, 5, 15, 10),
                    child: ListView.builder(
                      itemCount: 3,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return PopularItemView();
                      },
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //event
                    Container(
                      alignment: Alignment.center,
                      width: Get.width * 0.5,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: blue, width: 4),
                            top: BorderSide(color: blue, width: 1),
                            left: BorderSide(color: blue, width: 1),
                            right: BorderSide(color: blue, width: 1),
                          )),
                      child: Text(
                        "Event",
                        style: GoogleFonts.dmSans(
                            color: blue,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    //rekrutment
                    Container(
                      alignment: Alignment.center,
                      width: Get.width * 0.5,
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(
                            bottom: BorderSide(color: grey1, width: 1),
                            top: BorderSide(color: grey1, width: 1),
                            left: BorderSide(color: grey1, width: 1),
                            right: BorderSide(color: grey1, width: 1),
                          )),
                      child: Text(
                        "Rekrutment",
                        style: GoogleFonts.dmSans(
                            color: grey1,
                            fontSize: 13,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                Expanded(
                    flex: 7, child: Center(child: RekrutmenListMahasiswaView()))
              ]),
        ));
  }
}
