import 'package:get/get.dart';

import '../controllers/home_mahasiswa_controller.dart';

class HomeMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeMahasiswaController>(
      () => HomeMahasiswaController(),
    );
  }
}
