import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBinding extends Bindings {
  @override
  dependencies() {
    Get.create<HomeController>(() {
      return HomeController();
    });
  }
}
