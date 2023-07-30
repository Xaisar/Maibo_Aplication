import 'package:get/get.dart';

import '../controllers/riwayat_event_mahasiswa_controller.dart';

class RiwayatEventMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RiwayatEventMahasiswaController>(
      () => RiwayatEventMahasiswaController(),
    );
  }
}
