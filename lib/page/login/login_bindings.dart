import 'package:get/get.dart';

import 'login_controller.dart';

class LoginBinding extends Binding {
  // @override
  // dependencies() {
  //   Get.create<LoginController>(() {
  //     return LoginController();
  //   });
  // }
  @override
  List<Bind> dependencies() {
    return [
      Bind.put(LoginController()),
    ];
  }
}
