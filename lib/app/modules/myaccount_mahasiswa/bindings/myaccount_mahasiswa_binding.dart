import 'package:get/get.dart';

import '../controllers/myaccount_mahasiswa_controller.dart';

class MyaccountMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyaccountMahasiswaController>(
      () => MyaccountMahasiswaController(),
    );
  }
}
