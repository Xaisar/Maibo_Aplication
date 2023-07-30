import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/myactivity_mahasiswa_controller.dart';

class MyactivityMahasiswaView extends GetView<MyactivityMahasiswaController> {
  const MyactivityMahasiswaView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyactivityMahasiswaView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'MyactivityMahasiswaView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
