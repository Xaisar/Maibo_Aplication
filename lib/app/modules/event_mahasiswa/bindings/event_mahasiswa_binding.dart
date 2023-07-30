import 'package:get/get.dart';

import '../controllers/event_mahasiswa_controller.dart';

class EventMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventMahasiswaController>(
      () => EventMahasiswaController(),
    );
  }
}
