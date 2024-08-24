// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import '../../network/service/http_bin_service.dart';
import 'detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  dependencies() {
    Get.create(() => HttpBinService(Get.find()));
    Get.lazyPut<DetailController>(() {
      final parameters = Get.parameters;
      final arguments = Get.arguments as DetailViewParams?;
      final params = arguments ??
          DetailViewParams(
            id: int.tryParse(parameters['id'] ?? '0') ?? 0,
          );

      return DetailController(
        input: DetailInput(
          params: params,
          service: Get.find(),
        ),
      );
    });
  }
}

class DetailInput {
  final DetailViewParams params;
  final HttpBinService service;

  DetailInput({
    required this.params,
    required this.service,
  });
}

class DetailViewParams {
  final int id;

  const DetailViewParams({
    required this.id,
  });
}
