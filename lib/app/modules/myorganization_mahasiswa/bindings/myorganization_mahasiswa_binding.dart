import 'package:get/get.dart';

import '../controllers/myorganization_mahasiswa_controller.dart';

class MyorganizationMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyorganizationMahasiswaController>(
      () => MyorganizationMahasiswaController(),
    );
  }
}
