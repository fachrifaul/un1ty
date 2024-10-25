import 'package:get/get.dart';

import '../../util/loggy_types.dart';

class HomeController extends GetxController with ControllerLoggy {
  final count = RxInt(0);
  final result = RxString('');

  void increment() => count.value++;

  void setResult(String value) {
    result.value = value;
  }
}
