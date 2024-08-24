import 'package:get/get.dart';

import '../../core/common/async_value.dart';
import '../../core/logger/loggy_types.dart';
import '../../core/network/response/get_response.dart';
import '../../core/network/service/http_bin_service.dart';
import 'detail_bindings.dart';

class DetailController extends GetxController with ControllerLoggy {
  Rx<AsyncValue<GetResponse>> response =
      const AsyncValue<GetResponse>.loading().obs;

  final service = HttpBinService();
  final DetailViewParams params;

  DetailController({
    required this.params,
  });

  @override
  void onInit() {
    super.onInit();
    initialize();
  }

  void initialize() async {
    final result = await service.get();

    result.when(
      data: (value) {
        response.value = AsyncValue.data(value);
      },
      error: (error, stackTrace) {
        loggy.error(error, stackTrace);
        response.value = AsyncValue.error(error, stackTrace);
      },
    );
  }
}
