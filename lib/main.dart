import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'network/api.dart';
import 'network/service/auth_service.dart';
import 'network/service/http_bin_service.dart';
import 'routes/router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initServices();
  _initLoggy();

  runApp(
    // const MyApp(),
    const RootRestorationScope(
      restorationId: 'root',
      child: MyApp(),
    ),
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

Future<void> initServices() async {
  Get.putAsync(() async => await SharedPreferences.getInstance());
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
      restorationScopeId: 'root',
      initialRoute: AppPages.initial,
      unknownRoute:
          GetPage(name: '/notfound', page: () => const UnknownRoutePage()),
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

    Get.put(AuthService());
    Get.create(() => HttpBinService(Get.find()));
  }
}

class UnknownRoutePage extends StatefulWidget {
  const UnknownRoutePage({super.key});

  @override
  State<UnknownRoutePage> createState() => _UnknownRoutePageState();
}

class _UnknownRoutePageState extends State<UnknownRoutePage> {
  @override
  void initState() {
    super.initState();
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return const SizedBox();
  }
}
