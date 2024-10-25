import '../../routes/router_info.dart';

typedef LoginRouteInfo = RouteInfo<LoginInput, LoginOutput>;

abstract class LoginRoute {
  static String get login => '/login';
}

class LoginInput extends RouteInput {}

class LoginOutput {}
