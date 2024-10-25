import 'package:get/get.dart';

import '../../util/loggy_types.dart';
import 'home_controller.dart';

class HomeBinding extends Bindings with BindingLoggy {
  @override
  dependencies() {
    loggy.info('dependencies');

    Get.lazyPut(() => HomeController());
  }
}
