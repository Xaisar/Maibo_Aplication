import 'package:get/get.dart';

class LoginController extends GetxController {
  var eye = true.obs;

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

  void togglePasswordVisibility() {
    eye.value = !eye.value;
  }
}
