import 'package:get/get.dart';

import '../../network/service/http_bin_service.dart';
import 'detail_controller.dart';
import 'detail_route.dart';

class DetailBinding extends Binding {
  @override
  List<Bind> dependencies() {
    return [
      Bind.create((_) => HttpBinService(Get.find())),
      Bind.lazyPut(
        () => DetailController(
          params: DetailViewParams(
            input: DetailInput.fromMap(Get.parameters),
            service: Get.find(),
          ),
        ),
      ),
    ];
  }
  // @override
  // dependencies() {
  //   Get.create(() => HttpBinService(Get.find()));
  // Get.lazyPut<DetailController>(() {
  // return DetailController(
  //   params: DetailViewParams(
  //     input: DetailInput.fromMap(Get.parameters),
  //     service: Get.find(),
  //   ),
  // );
  // });
  // }
}

class DetailViewParams {
  final DetailInput input;
  final HttpBinService service;

  DetailViewParams({
    required this.input,
    required this.service,
  });
}
