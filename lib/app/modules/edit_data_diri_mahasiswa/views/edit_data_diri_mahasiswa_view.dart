import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maibo/theme.dart';
import 'package:get/get.dart';

import '../controllers/edit_data_diri_mahasiswa_controller.dart';

class EditDataDiriMahasiswaView
    extends GetView<EditDataDiriMahasiswaController> {
  const EditDataDiriMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditDataDiriMahasiswaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'EditDataDiriMahasiswaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
