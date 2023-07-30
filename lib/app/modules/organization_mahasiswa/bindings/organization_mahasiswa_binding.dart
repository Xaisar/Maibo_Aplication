import 'package:get/get.dart';

import '../controllers/organization_mahasiswa_controller.dart';

class OrganizationMahasiswaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OrganizationMahasiswaController>(
      () => OrganizationMahasiswaController(),
    );
  }
}
