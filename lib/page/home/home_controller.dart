import 'package:get/get.dart';

import '../../util/loggy_types.dart';

class HomeController extends GetxController with ControllerLoggy {
  RxInt selectedIndex = 0.obs;

  var count = 0.obs;

  increment() => count++;

  void onItemTapped(index) {
    selectedIndex.value = index;
  }
}
