import 'package:get/get.dart';

import '../controllers/full_image_controller.dart';

class FullImageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FullImageController>(
      () => FullImageController(),
    );
  }
}
