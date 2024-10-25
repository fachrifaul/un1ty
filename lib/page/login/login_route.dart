import '../../routes/restorable_page.dart';

abstract class LoginRoute {
  static String get login => '/login';
}

class LoginInput extends RouteInput {}

class LoginOutput {}
