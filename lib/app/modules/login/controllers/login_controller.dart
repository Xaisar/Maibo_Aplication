import 'package:get/get.dart';

import '../../../data/models/login_model.dart';

class LoginController extends GetxController {
  var eye = true.obs;
  // late Login login;
  var login = Login();
  void togglePasswordVisibility() {
    eye.value = !eye.value;
  }
}
