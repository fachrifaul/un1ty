import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../routes/route.dart';
import '../../util/loggy_types.dart';
import '../detail/detail_bindings.dart';
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
                  final path =
                      AppRoute.detail.path.replaceAll(':id', 123.toString());

                  Get.toNamed(
                    path,
                    arguments: const DetailViewParams(
                      id: 123,
                    ),
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
