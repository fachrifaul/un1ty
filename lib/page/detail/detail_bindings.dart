// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:get/get.dart';

import '../../network/service/http_bin_service.dart';
import 'detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  dependencies() {
    Get.create(() => HttpBinService(Get.find()));
    Get.lazyPut<DetailController>(() {
      final arguments = Get.arguments as DetailInput?;
      final parameters = Get.parameters;
      final input = arguments ??
          DetailInput(
            id: int.tryParse(parameters['id'] ?? '0') ?? 0,
          );

      return DetailController(
        params: DetailViewParams(
          input: input,
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

class DetailInput {
  final int id;

  const DetailInput({
    required this.id,
  });
}
