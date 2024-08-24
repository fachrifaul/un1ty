import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/common/async_value.dart';
import '../../core/logger/loggy_types.dart';
import '../../core/network/service/auth_service.dart';
import 'detail_bindings.dart';
import 'detail_controller.dart';

class DetailPage extends GetWidget<DetailController> with UiLoggy {
  final DetailViewParams params;

  const DetailPage({
    super.key,
    required this.params,
  });

  @override
  Widget build(BuildContext context) {
    loggy.info('lalal');
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail ${params.id}'),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.response.value.when(
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
