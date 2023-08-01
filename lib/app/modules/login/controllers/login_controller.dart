import 'package:get/get.dart';
import 'package:maibo/app/data/providers/login_provider.dart';

import '../../../data/models/login_model.dart';

class LoginController extends GetxController {
  var eye = true.obs;
  // late Login login;
  var login = Login();
  void masuk() {
    LoginProvider().postlogin(login.email!, login.password!).then((response) {
      print(response.body);
    });
  }

  void togglePasswordVisibility() {
    eye.value = !eye.value;
  }
}
