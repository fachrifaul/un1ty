import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../network/service/auth_service.dart';
import '../../routes/route.dart';
import '../../util/async_value.dart';
import '../../util/loggy_types.dart';
import 'detail_controller.dart';

class DetailPage extends GetWidget<DetailController> with UiLoggy {
  const DetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    loggy.info('build');
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('Detail ${controller.params.input.id}'),
          leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back,
            ),
          ),
        ),
        body: SafeArea(
          child: controller.response.value.when(
            data: (value) {
              return Column(
                children: [
                  Text('data ${value.toJson()}'),
                  ElevatedButton(
                    onPressed: () => _onTapLogout(),
                    child: const Text('Logout'),
                  ),
                ],
              );
            },
            loading: () => const Text('loading'),
            error: (error, stackTrace) => const Text('error'),
          ),
        ),
      ),
    );
  }

  void _onTapLogout() {
    AuthService.to.logout();
    Get.offAllNamed(AppRoute.home.path);
  }
}
