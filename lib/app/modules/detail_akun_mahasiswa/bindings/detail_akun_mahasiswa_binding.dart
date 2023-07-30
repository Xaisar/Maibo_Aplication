import 'package:get/get.dart';

import '../controllers/detail_akun_mahasiswa_controller.dart';

class DetailAkunMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailAkunMahasiswaController>(
      () => DetailAkunMahasiswaController(),
    );
  }
}
