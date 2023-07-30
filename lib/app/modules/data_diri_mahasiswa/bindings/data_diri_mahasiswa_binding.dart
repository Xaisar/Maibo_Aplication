import 'package:get/get.dart';

import '../controllers/data_diri_mahasiswa_controller.dart';

class DataDiriMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DataDiriMahasiswaController>(
      () => DataDiriMahasiswaController(),
    );
  }
}
