import 'package:get/get.dart';

import '../../network/service/http_bin_service.dart';
import 'detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  dependencies() {
    Get.create(() => HttpBinService(Get.find()));
    Get.create<DetailController>(() {
      final parameters = Get.parameters;
      final arguments = Get.arguments as DetailViewParams?;
      final params = arguments ??
          DetailViewParams(
            id: int.tryParse(parameters['id'] ?? '0') ?? 0,
          );

      return DetailController(
        params: params,
        service: Get.find(),
      );
    });
  }
}

class DetailViewParams {
  final int id;

  const DetailViewParams({
    required this.id,
  });
}
