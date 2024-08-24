import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/network/service/auth_service.dart';
import '../../routes/route.dart';

class LoginPage extends StatelessWidget {
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
            ElevatedButton(
              onPressed: () => Get.toNamed(AppRoute.home.name),
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapLogin(BuildContext context) {
    AuthService.to.login();
    Get.offNamed(AppRoute.home.name);
  }
}
