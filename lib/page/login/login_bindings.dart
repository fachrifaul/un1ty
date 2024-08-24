import 'package:get/get.dart';

import 'login_controller.dart';

class LoginBinding extends Bindings {
  @override
  dependencies() {
    Get.create<LoginController>(() {
      return LoginController();
    });
  }
}
