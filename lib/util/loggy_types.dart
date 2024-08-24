import 'package:loggy/loggy.dart';

mixin ModelLoggy implements LoggyType {
  @override
  Loggy<ModelLoggy> get loggy => Loggy<ModelLoggy>('MODEL: $runtimeType');
}

mixin UiLoggy implements LoggyType {
  @override
  Loggy<UiLoggy> get loggy => Loggy<UiLoggy>('UI: $runtimeType');
}

mixin ControllerLoggy implements LoggyType {
  @override
  Loggy<ControllerLoggy> get loggy =>
      Loggy<ControllerLoggy>('GetxController: $runtimeType');
}

mixin ServiceLoggy implements LoggyType {
  @override
  Loggy<ServiceLoggy> get loggy => Loggy<ServiceLoggy>('SERVICE: $runtimeType');
}

mixin MiddlewareLoggy implements LoggyType {
  @override
  Loggy<MiddlewareLoggy> get loggy =>
      Loggy<MiddlewareLoggy>('GetMiddleware: $runtimeType');
}
