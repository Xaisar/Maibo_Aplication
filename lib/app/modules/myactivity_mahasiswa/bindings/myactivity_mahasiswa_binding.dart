import 'package:get/get.dart';

import '../controllers/myactivity_mahasiswa_controller.dart';

class MyactivityMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyactivityMahasiswaController>(
      () => MyactivityMahasiswaController(),
    );
  }
}
