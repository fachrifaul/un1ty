import 'package:flutter/material.dart';

import '../util/loggy_types.dart';
import 'router_info.dart';

class RestorablePage extends StatefulWidget {
  final Map<String, RouteInfo<dynamic, Object>> routes;
  final Widget Function(Map<String, RestorableRouteFuture<dynamic>>) child;

  const RestorablePage({
    super.key,
    this.routes = const {},
    required this.child,
  });

  @override
  State<RestorablePage> createState() => _RestorablePageState();
}

class _RestorablePageState extends State<RestorablePage>
    with RestorationMixin, UiLoggy {
  final Map<String, RestorableRouteFuture<dynamic>> _dynamicRoutes = {};

  @override
  String? get restorationId {
    final routeName = ModalRoute.of(context)?.settings.name;
    return routeName ?? runtimeType.toString();
  }

  @override
  void initState() {
    super.initState();
    loggy.info('initState');

    widget.routes.forEach((key, value) {
      _dynamicRoutes[key] = value.routeFuture;
    });
  }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    _dynamicRoutes.forEach((key, route) {
      registerForRestoration(route, key);
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child(_dynamicRoutes);
  }

  @override
  void dispose() {
    _dynamicRoutes.forEach((_, route) => route.dispose());
    super.dispose();
  }
}
