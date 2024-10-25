import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/loggy_types.dart';
import '../detail/detail_route.dart';
import '../gallery/gallery_route.dart';
import 'home_controller.dart';

class HomePage extends GetWidget<HomeController> with UiLoggy {
  final Map<String, RestorableRouteFuture<dynamic>> routes;

  const HomePage({
    super.key,
    required this.routes,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                onPressed: () {
                  Get.restorableToNamed(
                    DetailRoute.path(id: 123),
                  );
                },
                child: const Text('Go to the Details screen no Params'),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.pushDetail(
                    DetailRoute.path(),
                    DetailInput(
                      id: 1234,
                      flag: true,
                      country: 'italy',
                      weight: 987,
                    ),
                  );
                },
                child: const Text('Go to the Details screen - routes'),
              ),
              ElevatedButton(
                onPressed: () {
                  final parameters = DetailInput(
                    id: 1234,
                    flag: true,
                    country: 'italy',
                    weight: 987,
                  ).toMap();
                  Get.restorableToNamed(
                    DetailRoute.path(id: 123),
                    parameters: parameters,
                  );
                },
                child:
                    const Text('Go to the Details screen - restorableToNamed'),
              ),
              Text(
                '${controller.result}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                onPressed: () {
                  final parameters = DetailInput(
                    id: 1234,
                    flag: true,
                    country: 'italy',
                    weight: 987,
                  ).toMap();

                  routes[GalleryRoute.path()]?.present(parameters);
                },
                child: const Text('Go to the gallery via - route'),
              ),
              ElevatedButton(
                onPressed: () {
                  final parameters = DetailInput(
                    id: 1234,
                    flag: true,
                    country: 'italy',
                    weight: 987,
                  ).toMap();

                  Get.restorableToNamed(
                    GalleryRoute.path(id: 123),
                    parameters: parameters,
                  );
                },
                child: const Text('Go to the gallery via - restorableToNamed'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: controller.increment,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
