import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/app/modules/event_mahasiswa/views/index_event_view.dart';
import 'package:maibo/app/modules/myaccount_mahasiswa/views/index_myaccount_view.dart';
import 'package:maibo/app/modules/organization_mahasiswa/views/index_organization_view.dart';
import 'package:maibo/theme.dart';
import 'package:maibo/app/views/views/loading_view.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';

import 'package:get/get.dart';

import '../../post_mahasiswa/views/index_post_view.dart';
import '../controllers/home_mahasiswa_controller.dart';

class HomeMahasiswaView extends GetView<HomeMahasiswaController> {
  HomeMahasiswaView({Key? key}) : super(key: key);
  final homec = HomeMahasiswaController();
  List<Widget> body = [
    IndexpostView(),
    IndexEventView(),
    IndexOrganizationView(),
    IndexMyaccountView()
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: blue,
            shadowColor: Colors.grey[300],
            title: Text('MAIBO',
                style: GoogleFonts.sairaStencilOne(
                  color: Colors.white,
                  fontSize: 30,
                )),
          ),
          body: body[homec.i.value],
          bottomNavigationBar: ConvexAppBar(
            style: TabStyle.flip,
            color: blue,
            activeColor: Colors.white,
            items: const [
              TabItem(icon: Icons.home_filled, title: "home"),
              TabItem(icon: Icons.event, title: "Event"),
              TabItem(icon: Icons.home_work_rounded, title: "Organization"),
              // TabItem(icon: Icons.calendar_month, title: "My Activity"),
              TabItem(icon: Icons.person, title: "Accout"),
            ],
            initialActiveIndex: homec.i.value,
            onTap: (int i) {
              homec.i.value = i;
            },
          ),
        ));
  }
}
