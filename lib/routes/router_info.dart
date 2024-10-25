import 'package:flutter/material.dart';

import '../util/loggy_types.dart';

class RouteInfo<I extends RouteInput, O extends Object> with UiLoggy {
  final String path;
  final RouteCompletionCallback<O>? result;

  late final RestorableRouteFuture routeFuture;

  String? _routeName;

  RouteInfo(
    this.path, {
    this.result,
  }) {
    routeFuture = createRestorableRouteFuture();
  }

  RestorableRouteFuture createRestorableRouteFuture() {
    return RestorableRouteFuture(
      onPresent: (navigator, args) {
        final input = args as I;
        final parameters = input.toMap();
        final newPath = _routeName ?? path;
        final uri = Uri(path: newPath, queryParameters: parameters);
        return navigator.restorablePushNamed(
          uri.toString(),
          arguments: input.toMap(),
        );
      },
      onComplete: (output) {
        loggy.info('Route [$path] completed with result: $result');
        if (output != null) {
          if (output is O) {
            result?.call(output);
          } else {
            loggy.warning(
              'Route [$path] completed with unexpected result type: ${result.runtimeType}',
            );
          }
        }
      },
    );
  }

  void push(String routeName, I arguments) {
    _routeName = routeName;
    routeFuture.present(arguments);
  }
}

abstract class RouteInput {
  Map<String, dynamic>? toMap() => null;
}
