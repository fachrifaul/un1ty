import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../network/service/auth_service.dart';
import '../../routes/route.dart';
import '../../util/async_value.dart';
import '../../util/loggy_types.dart';
import 'gallery_controller.dart';
import 'gallery_route.dart';

class GalleryPage extends GetWidget<GalleryController> with UiLoggy {
  const GalleryPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    loggy.info('build');
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          title: Text('Gallery ${controller.params.input.id}'),
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
                  Text('data ${controller.params.input.id}'),
                  Text('data ${controller.params.input.flag}'),
                  Text('data ${controller.params.input.country}'),
                  Text('data ${controller.params.input.weight}'),
                  ElevatedButton(
                    onPressed: () => _onTapPopParams(),
                    child: const Text('Pop params'),
                  ),
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

  void _onTapPopParams() {
    Get.back(result: GalleryOutput(message: "output from detail page"));
  }

  void _onTapLogout() {
    AuthService.to.logout();
    Get.offAllNamed(AppRoute.home);
  }
}
