import 'package:get/get.dart';

import '../../network/service/http_bin_service.dart';
import 'detail_controller.dart';
import 'detail_route.dart';

class DetailBinding extends Bindings {
  @override
  dependencies() {
    Get.create(() => HttpBinService(Get.find()));
    Get.lazyPut<DetailController>(() {
      final params = Get.parameters;
      return DetailController(
        params: DetailViewParams(
          input: DetailInput.fromMap(params),
          service: Get.find(),
        ),
      );
    });
  }
}

class DetailViewParams {
  final DetailInput input;
  final HttpBinService service;

  DetailViewParams({
    required this.input,
    required this.service,
  });
}
