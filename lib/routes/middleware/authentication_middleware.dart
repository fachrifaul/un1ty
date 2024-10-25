import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../network/service/auth_service.dart';
import '../../page/login/login_route.dart';
import '../../util/loggy_types.dart';
import '../route.dart';

class EnsureAuthMiddleware extends GetMiddleware with MiddlewareLoggy {
  @override
  RouteSettings? redirect(String? route) {
    if (!AuthService.to.isLoggedInValue) {
      final newRoute = LoginRoute.login;
      return RouteSettings(name: newRoute);
    }
    return super.redirect(route);
  }

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
    loggy.info(route);
    return super.redirectDelegate(route);
  }
}

class EnsureNotAuthedMiddleware extends GetMiddleware with MiddlewareLoggy {
  @override
  RouteSettings? redirect(String? route) {
    if (AuthService.to.isLoggedInValue) {
      final newRoute = AppRoute.home;
      return RouteSettings(name: newRoute);
    }
    return super.redirect(route);
  }

  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
    loggy.info(route);
    return super.redirectDelegate(route);
  }
}
