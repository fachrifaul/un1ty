import 'package:get/get.dart';

import '../../network/service/auth_service.dart';
import '../../routes/router_info.dart';
import '../../util/loggy_types.dart';
import '../detail/detail_route.dart';
import '../gallery/gallery_route.dart';
import '../login/login_route.dart';

mixin GetXRestorationMixin on GetxController {
  void initRoute<I extends RouteInput, O extends Object>(
    RouteInfo<I, O> route,
  ) {}
}

class HomeController extends GetxController
    with GetXRestorationMixin, ControllerLoggy {
  final count = RxInt(0);
  final result = RxString('');
  final resultGallery = RxString('');

  Map<String, RouteInfo<dynamic, Object>> routes = {};

  Map<String, RouteInfo<dynamic, Object>> _initRoutes() {
    return {
      LoginRoute.login: LoginRouteInfo(LoginRoute.login),
      DetailRoute.path(): DetailRouteInfo(
        DetailRoute.path(),
        result: (output) {
          loggy.info(output.message);
          result.value = output.message;
        },
      ),
      GalleryRoute.path(): GalleryRouteInfo(
        GalleryRoute.path(),
        result: (output) {
          loggy.info(output.message);
          resultGallery.value = output.message;
        },
      ),
    };
  }

  @override
  void onInit() {
    super.onInit();
    loggy.info('onInit');
    routes = _initRoutes();
  }

  @override
  void onReady() {
    super.onReady();
    final abc = AuthService.to.isLoggedInValue;
    loggy.info('abc $abc');
    if (!AuthService.to.isLoggedInValue) {
      final route = routes[LoginRoute.login];
      route?.routeFuture.present(LoginInput());
    }
  }

  void increment() => count.value++;

  void setResult(String value) {
    result.value = value;
  }

  void setResultGallery(String value) {
    resultGallery.value = value;
  }

  void pushDetail(String path, DetailInput input) {
    final route = routes[DetailRoute.path()];
    route?.push(path, input);
  }
}
