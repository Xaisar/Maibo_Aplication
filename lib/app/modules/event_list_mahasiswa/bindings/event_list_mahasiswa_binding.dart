import 'package:get/get.dart';

import '../controllers/event_list_mahasiswa_controller.dart';

class EventListMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EventListMahasiswaController>(
      () => EventListMahasiswaController(),
    );
  }
}
