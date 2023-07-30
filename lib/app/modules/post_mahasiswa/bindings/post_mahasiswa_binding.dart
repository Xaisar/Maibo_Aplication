import 'package:get/get.dart';

import '../controllers/post_mahasiswa_controller.dart';

class PostMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PostMahasiswaController>(
      () => PostMahasiswaController(),
    );
  }
}
