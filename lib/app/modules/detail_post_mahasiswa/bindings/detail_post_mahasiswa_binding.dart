import 'package:get/get.dart';

import '../controllers/detail_post_mahasiswa_controller.dart';

class DetailPostMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPostMahasiswaController>(
      () => DetailPostMahasiswaController(),
    );
  }
}
