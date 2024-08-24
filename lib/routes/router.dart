import 'package:get/get.dart';

import '../middleware/authentication_middleware.dart';
import '../page/auth/login_page.dart';
import '../page/detail/detail_bindings.dart';
import '../page/detail/detail_page.dart';
import '../page/home/home_page.dart';
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
        //only enter this route when not authed
        EnsureAuthMiddleware(),
      ],
    ),
    GetPage(
      name: AppRoute.login.path,
      page: () => const LoginPage(),
      middlewares: [
        //only enter this route when not authed
        EnsureNotAuthedMiddleware(),
      ],
    ),
    GetPage(
      name: AppRoute.detail.path,
      page: () => const DetailPage(
        params: DetailViewParams(id: 123),
      ),
      binding: DetailBinding(),
    ),
  ];
}
