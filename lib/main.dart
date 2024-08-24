import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loggy/loggy.dart';

import 'navigation/router.dart';
import 'page/auth/authentication_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  _initLoggy();

  runApp(
    BlocProvider(
      create: (context) => AuthhenticationBloc(),
      child: const MyApp(),
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
    return BlocListener<AuthhenticationBloc, AuthenticationState>(
      listener: (context, state) {
        appRouter.refresh();
      },
      child: MaterialApp.router(
        routerConfig: appRouter,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
