import 'package:get/get.dart';

import '../controllers/detail_rekrutmen_mahasiswa_controller.dart';

class DetailRekrutmenMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailRekrutmenMahasiswaController>(
      () => DetailRekrutmenMahasiswaController(),
    );
  }
}
