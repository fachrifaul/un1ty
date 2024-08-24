import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import 'core/network/api.dart';
import 'core/network/service/auth_service.dart';
import 'core/network/service/http_bin_service.dart';
import 'routes/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  _initLoggy();

  runApp(
    const MyApp(),
  );
}

void _initLoggy() {
  Loggy.initLoggy(
    logOptions: const LogOptions(
      LogLevel.all,
      stackTraceLevel: LogLevel.warning,
    ),
    logPrinter: const PrettyPrinter(),
  );
}

class MyApp extends StatelessWidget with UiLoggy {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBindings(),
      getPages: AppPages.routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AppBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(ApiDio());
    Get.lazyPut(() => HttpBinService(Get.find()));
    Get.put(AuthService());
  }
}
