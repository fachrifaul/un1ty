import 'package:get/get.dart';

import '../../network/service/http_bin_service.dart';
import 'gallery_controller.dart';
import 'gallery_route.dart';

class GalleryBinding extends Bindings {
  @override
  dependencies() {
    Get.create(() => HttpBinService(Get.find()));

    Get.lazyPut<GalleryController>(() {
      return GalleryController(
        params: GalleryViewParams(
          input: GalleryInput.fromMap(Get.parameters),
          service: Get.find(),
        ),
      );
    });
  }
}

class GalleryViewParams {
  final GalleryInput input;
  final HttpBinService service;

  GalleryViewParams({
    required this.input,
    required this.service,
  });
}
