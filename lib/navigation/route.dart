enum AppRoute {
  home('/'),
  detail('/detail'),
  login('/login'),
  ;

  const AppRoute(this.path);

  final String path;
}
