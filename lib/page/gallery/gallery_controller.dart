import 'package:get/get.dart';

import '../../network/response/get_response.dart';
import '../../routes/router_info.dart';
import '../../util/async_value.dart';
import '../../util/loggy_types.dart';
import 'gallery_bindings.dart';

class GalleryController extends GetxController
    with DisposableInterfaceRestoration, ControllerLoggy {
  Rx<AsyncValue<GetResponse>> response =
      const AsyncValue<GetResponse>.loading().obs;

  final GalleryViewParams params;

  Map<String, RouteInfo<dynamic, Object>> routes = {};

  GalleryController({
    required this.params,
  });

  @override
  void onInit() {
    super.onInit();
    loggy.info('onInit');
    initialize();
  }

  void initialize() async {
    final result = await params.service.get();

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

  @override
  void restoreState(Object? state) {
    // Implement restoration logic here if necessary
    // For example, restoring the response or any other relevant state
    if (state is AsyncValue<GetResponse>) {
      response.value = state; // Restore the previous state
    }
  }

  @override
  Object? saveState() {
    // Save the current response state for restoration
    return response.value; // This allows restoring the response state
  }
}
