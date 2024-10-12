import 'package:get/get.dart';

class LoginController extends GetxController {
  RxBool hidePassword = true.obs;

  void showPassword() {
    hidePassword.value = !hidePassword.value;
  }

  void login() {}
}
