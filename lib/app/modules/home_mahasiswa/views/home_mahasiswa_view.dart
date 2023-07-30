import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:maibo/app/views/views/loading_view.dart';

import 'package:get/get.dart';

import '../../post_mahasiswa/views/index_post_view.dart';
import '../controllers/home_mahasiswa_controller.dart';

class HomeMahasiswaView extends GetView<HomeMahasiswaController> {
  const HomeMahasiswaView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: blue,
          shadowColor: Colors.grey[300],
          title: Text('MAIBO',
              style: GoogleFonts.sairaStencilOne(
                color: Colors.white,
                fontSize: 30,
              )),
        ),
        body: IndexpostView());
  }
}
