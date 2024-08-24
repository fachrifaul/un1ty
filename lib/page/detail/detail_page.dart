import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/common/async_value.dart';
import '../../core/logger/loggy_types.dart';
import '../../network/service/auth_service.dart';
import 'detail_controller.dart';

class DetailPage extends GetWidget<DetailController> with UiLoggy {
  const DetailPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    loggy.info('lalal');
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('Detail ${controller.params.id}'),
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
                    onPressed: () => AuthService.to.logout(),
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
}
