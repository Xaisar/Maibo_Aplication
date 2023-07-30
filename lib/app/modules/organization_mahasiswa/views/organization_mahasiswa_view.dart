import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../controllers/organization_mahasiswa_controller.dart';
import 'item/organization_item.dart';

class OrganizationMahasiswaView
    extends GetView<OrganizationMahasiswaController> {
  const OrganizationMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: grey2,
        body: RefreshIndicator(
          onRefresh: () {
            return Future.delayed(const Duration(seconds: 5));
          },
          child: ListView.separated(
              itemCount: 5,
              separatorBuilder: (context, index) {
                return const Divider(height: 3);
              },
              itemBuilder: (context, index) {
                return const OrganizationItemView();
              }),
        ));
  }
}
