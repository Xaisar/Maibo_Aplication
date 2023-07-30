import 'package:get/get.dart';

import '../controllers/detail_event_mahasiswa_controller.dart';

class DetailEventMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailEventMahasiswaController>(
      () => DetailEventMahasiswaController(),
    );
  }
}
