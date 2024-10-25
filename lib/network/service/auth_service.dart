import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../util/loggy_types.dart';

class AuthService extends GetxService with ServiceLoggy {
  final SharedPreferences prefs = Get.find();

  static AuthService get to => Get.find();

  static const String _key = 'isLoggedIn';

  /// Mocks a login process
  final isLoggedIn = false.obs;
  bool get isLoggedInValue => isLoggedIn.value;

  @override
  void onInit() {
    super.onInit();
    loggy.info('onInit');
    initialize();
  }

  void login() async {
    prefs.setBool(_key, true);
    isLoggedIn.value = true;
  }

  void logout() async {
    await prefs.setBool(_key, false);
    isLoggedIn.value = false;
  }

  void initialize() {
    isLoggedIn.value = prefs.getBool(_key) ?? false;
    loggy.info('isLoggedIn ${isLoggedIn.value}');
  }
}
