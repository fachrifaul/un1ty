import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/loggy_types.dart';
import '../detail/detail_route.dart';

class HomeController extends GetxController with ControllerLoggy {
  late RestorableRouteFuture<dynamic> _detailRoute;

  RxInt selectedIndex = 0.obs;
  RxString resultArgs = ''.obs;

  var count = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _detailRoute = RestorableRouteFuture(
      onPresent: (navigator, arguments) {
        final params = const DetailInput(
          id: 1234,
          flag: true,
          country: 'italy',
          weight: 987,
        ).toMap();

        final uri = Uri(
          path: DetailRoute.path(id: 123),
          queryParameters: params,
        );
        final url = uri.toString();
        return navigator.restorablePushNamed(
          url,
          arguments: params,
        );
        //  Get.toNamed(
        //   DetailRoute.path(id: 123),
        //   parameters: const DetailInput(
        //     id: 1234,
        //     flag: true,
        //     country: 'italy',
        //     weight: 987,
        //   ).toMap(),
        // );
      },
      onComplete: (result) {
        loggy.info('result: $result');
      },
    );
  }

  @override
  void onClose() {
    _detailRoute.dispose();
  }

  increment() => count++;

  void onItemTapped(index) {
    selectedIndex.value = index;
  }

  void setResultArgs(String result) {
    resultArgs.value = result;
  }

  void routeToDetail() {
    _detailRoute.present();
  }
}
