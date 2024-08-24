class AppRoute {
  static String get home => '/';

  static String get login => '/login';

  static String detail({int? id}) => '/detail/${id ?? ':id'}';

  const AppRoute(this.path);

  final String path;
}
