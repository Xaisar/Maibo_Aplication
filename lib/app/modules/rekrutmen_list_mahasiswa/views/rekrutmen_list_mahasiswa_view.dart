import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';

import 'package:get/get.dart';

import '../controllers/rekrutmen_list_mahasiswa_controller.dart';
import 'item/rekrutmen_list_item.dart';

class RekrutmenListMahasiswaView
    extends GetView<RekrutmenListMahasiswaController> {
  const RekrutmenListMahasiswaView({Key? key}) : super(key: key);
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
        return const RekrutmenListItemView();
      },
    );
  }
}
