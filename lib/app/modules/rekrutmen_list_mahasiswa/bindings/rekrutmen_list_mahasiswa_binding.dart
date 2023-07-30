import 'package:get/get.dart';

import '../controllers/rekrutmen_list_mahasiswa_controller.dart';

class RekrutmenListMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RekrutmenListMahasiswaController>(
      () => RekrutmenListMahasiswaController(),
    );
  }
}
