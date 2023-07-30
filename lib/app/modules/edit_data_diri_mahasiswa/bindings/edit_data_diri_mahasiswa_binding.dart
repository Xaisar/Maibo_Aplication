import 'package:get/get.dart';

import '../controllers/edit_data_diri_mahasiswa_controller.dart';

class EditDataDiriMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditDataDiriMahasiswaController>(
      () => EditDataDiriMahasiswaController(),
    );
  }
}
