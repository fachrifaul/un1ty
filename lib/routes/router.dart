import 'package:get/get.dart';

import '../page/detail/detail_bindings.dart';
import '../page/detail/detail_page.dart';
import '../page/detail/detail_route.dart';
import '../page/gallery/gallery_bindings.dart';
import '../page/gallery/gallery_controller.dart';
import '../page/gallery/gallery_page.dart';
import '../page/gallery/gallery_route.dart';
import '../page/home/home_bindings.dart';
import '../page/home/home_controller.dart';
import '../page/home/home_page.dart';
import '../page/login/login_bindings.dart';
import '../page/login/login_page.dart';
import '../page/login/login_route.dart';
import 'restorable_page.dart';
import 'route.dart';

class AppPages {
  static final String initial = AppRoute.home;

  static final routes = [
    GetPage(
      name: AppRoute.home,
      restorationId: AppRoute.home,
      page: () => RestorablePage(
        routes: Get.find<HomeController>().routes,
        child: (routes) => HomePage(routes: routes),
      ),
      binding: HomeBinding(),
      preventDuplicates: false,
    ),
    GetPage(
      name: LoginRoute.login,
      restorationId: LoginRoute.login,
      preventDuplicates: false,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: DetailRoute.path(),
      restorationId: DetailRoute.path(),
      // page: () => const DetailPage(),
      page: () => RestorablePage(
        child: (route) => const DetailPage(),
      ),
      binding: DetailBinding(),
    ),
    GetPage(
      name: GalleryRoute.path(),
      restorationId: GalleryRoute.path(),
      page: () => RestorablePage(
        routes: Get.find<GalleryController>().routes,
        child: (routes) => const GalleryPage(),
      ),
      binding: GalleryBinding(),
    ),
  ];
}
