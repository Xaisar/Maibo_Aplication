import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/data_diri_mahasiswa_controller.dart';

class DataDiriMahasiswaView extends GetView<DataDiriMahasiswaController> {
  const DataDiriMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DataDiriMahasiswaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DataDiriMahasiswaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
