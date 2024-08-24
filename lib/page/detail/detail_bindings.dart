import 'package:get/get.dart';

import 'detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  dependencies() {
    Get.create<DetailController>(() {
      return DetailController(
        params: Get.arguments,
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
