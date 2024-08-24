class AppRoute {
  static String get home => '/';

  static String get login => '/login';

  const AppRoute(this.path);

  final String path;
}
