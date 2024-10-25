import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../page/detail/detail_bindings.dart';
import '../page/detail/detail_page.dart';
import '../page/detail/detail_route.dart';
import '../page/home/home_bindings.dart';
import '../page/home/home_page.dart';
import '../page/login/login_bindings.dart';
import '../page/login/login_page.dart';
import '../util/loggy_types.dart';
import 'middleware/authentication_middleware.dart';
import 'route.dart';

class AppPages {
  static final String initial = AppRoute.home;

  static final routes = [
    GetPage(
      name: AppRoute.home,
      restorationId: AppRoute.home,
      page: () => const HomePage(),
      binding: HomeBinding(),
      preventDuplicates: true,
      middlewares: [
        EnsureAuthMiddleware(),
        MainMiddleware(),
      ],
    ),
    GetPage(
      name: AppRoute.login,
      restorationId: AppRoute.login,
      preventDuplicates: true,
      page: () => const LoginPage(),
      binding: LoginBinding(),
      middlewares: [
        EnsureNotAuthedMiddleware(),
      ],
    ),
    GetPage(
      name: DetailRoute.path(),
      restorationId: DetailRoute.path(),
      page: () => const DetailPage(),
      binding: DetailBinding(),
      middlewares: [
        MainMiddleware(),
        EnsureAuthMiddleware(),
      ],
    ),
  ];
}

class MainMiddleware extends GetMiddleware with MiddlewareLoggy {
  @override
  void onPageDispose() {
    log('MainMiddleware onPageDispose');
    super.onPageDispose();
  }

  @override
  Widget onPageBuilt(Widget page) {
    log('MainMiddleware onPageBuilt');
    return super.onPageBuilt(page);
  }

  @override
  GetPage? onPageCalled(GetPage? page) {
    log('MainMiddleware onPageCalled for route: ${page?.name}');
    return super.onPageCalled(page);
  }

  @override
  List<R>? onBindingsStart<R>(List<R>? bindings) {
    log('MainMiddleware onBindingsStart');
    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    log('MainMiddleware onPageBuildStart $page');

    return super.onPageBuildStart(page);
  }
}
