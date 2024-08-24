import 'package:get/get.dart';

import '../../util/loggy_types.dart';

class HomeController extends GetxController with ControllerLoggy {
  var count = 0.obs;

  increment() => count++;
}
