import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

import 'network/api.dart';
import 'network/service/auth_service.dart';
import 'routes/router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  _initLoggy();

  runApp(
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

class MyApp extends StatelessWidget with UiLoggy {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // initialBinding: AppBindings(),
      binds: [
        Bind.put(ApiDio()),
        Bind.put(AuthService()),
      ],
      getPages: AppPages.routes,
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

// class AppBindings extends Bindings {
//   @override
//   void dependencies() {
//     Get.put(ApiDio());
//     Get.put(AuthService());
//   }
// }

// class AppBinding extends Binding {
//   @override
//   List<Bind> dependencies() {
//     return [
//       Bind.put(ApiDio()),
//       Bind.put(AuthService()),
//     ];
//   }
// }

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
