import 'package:get/get.dart';

class ChangePasswordController extends GetxController {
  var eye1 = true.obs;
  var eye2 = true.obs;
  var eye3 = true.obs;

  void togglePasswordVisibility(nilai) {
    nilai.value = !nilai.value;
  }
}
