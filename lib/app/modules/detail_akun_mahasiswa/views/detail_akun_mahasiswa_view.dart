import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_akun_mahasiswa_controller.dart';

class DetailAkunMahasiswaView extends GetView<DetailAkunMahasiswaController> {
  const DetailAkunMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailAkunMahasiswaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailAkunMahasiswaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
