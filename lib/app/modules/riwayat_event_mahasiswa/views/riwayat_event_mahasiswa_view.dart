import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/riwayat_event_mahasiswa_controller.dart';

class RiwayatEventMahasiswaView
    extends GetView<RiwayatEventMahasiswaController> {
  const RiwayatEventMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RiwayatEventMahasiswaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'RiwayatEventMahasiswaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
