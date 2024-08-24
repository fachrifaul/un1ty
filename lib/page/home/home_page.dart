import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../util/loggy_types.dart';
import '../detail/detail_route.dart';
import 'home_controller.dart';

class HomePage extends GetWidget<HomeController> with UiLoggy {
  const HomePage({super.key});

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
                  Get.toNamed(
                    DetailRoute.path(id: 123),
                  );
                },
                child: const Text('Go to the Details screen no Params'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                    DetailRoute.path(id: 123),
                    parameters: const DetailInput(
                      id: 1234,
                      flag: true,
                      country: 'italy',
                      weight: 987,
                    ).toMap(),
                  );
                },
                child: const Text('Go to the Details screen'),
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
