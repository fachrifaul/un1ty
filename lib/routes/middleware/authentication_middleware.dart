import 'dart:async';

import 'package:get/get.dart';

import '../../network/service/auth_service.dart';
import '../../util/loggy_types.dart';
import '../route.dart';

class EnsureAuthMiddleware extends GetMiddleware with MiddlewareLoggy {
  // @override
  // RouteSettings? redirect(String? route) {
  //   final isLoggedIn = AuthService.to.isLoggedInValue;
  //   if (!isLoggedIn) {
  //     final newRoute = AppRoute.login;
  //     return RouteSettings(name: newRoute);
  //   }
  //   return super.redirect(route);
  // }

  @override
  FutureOr<RouteDecoder?> redirectDelegate(RouteDecoder route) {
    loggy.info(route);

    final isLoggedIn = AuthService.to.isLoggedInValue;
    if (!isLoggedIn) {
      final newRoute = AppRoute.login;
      return RouteDecoder.fromRoute(newRoute);
    }
    return super.redirectDelegate(route);
  }

  // @override
  // Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
  //   loggy.info(route);
  //   return super.redirectDelegate(route);
  // }
}

class EnsureNotAuthedMiddleware extends GetMiddleware with MiddlewareLoggy {
  // @override
  // RouteSettings? redirect(String? route) {
  //   final isLoggedIn = AuthService.to.isLoggedInValue;
  //   if (isLoggedIn) {
  //     final newRoute = AppRoute.home;
  //     return RouteSettings(name: newRoute);
  //   }
  //   return super.redirect(route);
  // }

  @override
  FutureOr<RouteDecoder?> redirectDelegate(RouteDecoder route) {
    loggy.info(route);

    final isLoggedIn = AuthService.to.isLoggedInValue;
    if (isLoggedIn) {
      final newRoute = AppRoute.home;
      return RouteDecoder.fromRoute(newRoute);
    }
    return super.redirectDelegate(route);
  }
  // @override
  // Future<GetNavConfig?> redirectDelegate(GetNavConfig route) {
  //   loggy.info(route);
  //   return super.redirectDelegate(route);
  // }
}
