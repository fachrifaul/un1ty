enum AppRoute {
  home('/'),
  detail('/detail/:id'),
  login('/login'),
  ;

  const AppRoute(this.path);

  final String path;
}
