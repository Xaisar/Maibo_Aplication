import 'package:get/get.dart';

import '../controllers/detail_organization_mahasiswa_controller.dart';

class DetailOrganizationMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailOrganizationMahasiswaController>(
      () => DetailOrganizationMahasiswaController(),
    );
  }
}
