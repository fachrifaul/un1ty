import 'package:get/get.dart';

import '../page/auth/login_page.dart';
import '../page/detail/detail_bindings.dart';
import '../page/detail/detail_page.dart';
import '../page/home/home_page.dart';
import 'middleware/authentication_middleware.dart';
import 'route.dart';

class AppPages {
  static final String initial = AppRoute.home.path;

  static final routes = [
    GetPage(
      name: AppRoute.home.path,
      page: () => const HomePage(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      middlewares: [
        EnsureAuthMiddleware(),
      ],
    ),
    GetPage(
      name: AppRoute.login.path,
      page: () => const LoginPage(),
      middlewares: [
        EnsureNotAuthedMiddleware(),
      ],
    ),
    GetPage(
      name: AppRoute.detail.path,
      page: () => const DetailPage(),
      binding: DetailBinding(),
    ),
  ];
}
