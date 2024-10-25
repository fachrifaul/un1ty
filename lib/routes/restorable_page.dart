import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../util/loggy_types.dart';

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
  late RestorableRouteFuture<dynamic> _instantPopResult;
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

    _instantPopResult = RestorableRouteFuture(
      onPresent: (navigator, _) {
        final name = ModalRoute.of(context)!.settings.name!;
        return navigator.restorablePushNamed(name);
      },
      onComplete: (result) {
        Get.back(result: result);
      },
    );

    widget.routes.forEach((key, value) {
      _dynamicRoutes[key] = value.routeFuture;
    });

    ///
  }

  // RestorableRouteFuture<dynamic>
  //     createRestorableRouteFuture<I, O extends Object>(
  //   RouteInfo<I, O> info,
  // ) {
  //   return RestorableRouteFuture(
  //     onPresent: (navigator, args) {
  //       final parameters = args as Map<String, String>;
  //       final uri = Uri(path: info.path, queryParameters: parameters);
  //       return navigator.restorablePushNamed(
  //         uri.toString(),
  //         arguments: parameters,
  //       );
  //     },
  //     onComplete: (result) {
  //       loggy.info('Route [${info.path}] completed with result: $result');
  //       if (result != null) {
  //         if (result is O) {
  //           info.callback(result);
  //         } else {
  //           loggy.warning(
  //             'Route [${info.path}] completed with unexpected result type: ${result.runtimeType}',
  //           );
  //         }
  //       }
  //     },
  //   );
  // }

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    registerForRestoration(_instantPopResult, "instant_pop");
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

class RouteInfo<I extends RouteInput, O extends Object> with UiLoggy {
  final String path;
  late final RestorableRouteFuture routeFuture;
  final RouteCompletionCallback callback;

  RouteInfo({
    required this.path,
    required this.callback,
  }) {
    routeFuture = createRestorableRouteFuture();
  }

  RestorableRouteFuture createRestorableRouteFuture() {
    return RestorableRouteFuture(
      onPresent: (navigator, args) {
        final input = args as I;
        final parameters = input.toMap();
        final uri = Uri(path: path, queryParameters: parameters);
        return navigator.restorablePushNamed(
          uri.toString(),
          arguments: input.toMap(),
        );
      },
      onComplete: (result) {
        loggy.info('Route [$path] completed with result: $result');
        if (result != null) {
          if (result is O) {
            callback(result);
          } else {
            loggy.warning(
              'Route [$path] completed with unexpected result type: ${result.runtimeType}',
            );
          }
        }
      },
    );
  }
}

abstract class RouteInput {
  Map<String, dynamic>? toMap() => null;
}
