import 'package:get/get.dart';
import 'package:quickly/quickly.dart';

import '../../network/service/http_bin_service.dart';
import 'detail_controller.dart';

class DetailBinding extends Bindings {
  @override
  dependencies() {
    Get.create(() => HttpBinService(Get.find()));
    Get.lazyPut<DetailController>(() {
      return DetailController(
        params: DetailViewParams(
          input: DetailInput.fromMap(Get.parameters),
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
  static const idKey = 'id';
  static const flagKey = 'flag';
  static const countryKey = 'country';

  final int id;
  final bool flag;
  final String country;

  const DetailInput({
    required this.id,
    this.flag = false,
    this.country = '',
  });

  factory DetailInput.fromMap(Map<String, String?> parameters) {
    return DetailInput(
      id: parameters.getInt('id') ?? 0,
      flag: parameters.getBool('flag'),
      country: parameters.getString('country') ?? '',
    );
  }

  Map<String, String>? toMap() {
    return {
      idKey: id.toString(),
      flagKey: flag.toString(),
      countryKey: country.toString(),
    };
  }
}
