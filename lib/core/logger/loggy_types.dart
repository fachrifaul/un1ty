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

mixin RepositoryLoggy implements LoggyType {
  @override
  Loggy<RepositoryLoggy> get loggy =>
      Loggy<RepositoryLoggy>('REPOSITORY: $runtimeType');
}

mixin MiddlewareLoggy implements LoggyType {
  @override
  Loggy<MiddlewareLoggy> get loggy =>
      Loggy<MiddlewareLoggy>('GetMiddleware: $runtimeType');
}
