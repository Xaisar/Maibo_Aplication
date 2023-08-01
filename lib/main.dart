import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/modules/detail_event_mahasiswa/views/detail_event_mahasiswa_view.dart';
import 'app/modules/detail_organization_mahasiswa/views/detail_organization_mahasiswa_view.dart';
import 'app/modules/detail_post_mahasiswa/views/detail_post_mahasiswa_view.dart';
import 'app/modules/event_mahasiswa/views/event_mahasiswa_view.dart';

import 'app/modules/myaccount_mahasiswa/views/myaccount_mahasiswa_view.dart';
import 'app/modules/post_mahasiswa/views/index_post_view.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Maibo",
      initialRoute: AppPages.INITIAL,
      // home: IndexpostView(),
      getPages: AppPages.routes,
    ),
  );
}
