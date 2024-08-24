import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../network/service/auth_service.dart';
import '../../routes/route.dart';
import '../../util/loggy_types.dart';
import 'login_controller.dart';

class LoginPage extends GetWidget<LoginController> with UiLoggy {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Logjn'),
            ElevatedButton(
              onPressed: () => _onTapLogin(context),
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapLogin(BuildContext context) {
    AuthService.to.login();
    Get.offNamed(AppRoute.home);
  }
}
