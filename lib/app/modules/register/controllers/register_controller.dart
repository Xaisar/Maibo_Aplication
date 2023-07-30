import 'package:get/get.dart';

class RegisterController extends GetxController {
  var eye1 = true.obs;
  var eye2 = true.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void togglePasswordVisibility(nilai) {
    nilai.value = !nilai.value;
  }
}
