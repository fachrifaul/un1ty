import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../page/auth/authentication_bloc.dart';
import '../page/auth/login_page.dart';
import '../page/detail/detail_page.dart';
import '../page/home/home_page.dart';
import 'route.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      name: AppRoute.home.name,
      path: AppRoute.home.path,
      builder: (context, state) {
        return const HomePage();
      },
    ),
    GoRoute(
      name: AppRoute.login.name,
      path: AppRoute.login.path,
      builder: (context, state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      name: AppRoute.detail.name,
      path: AppRoute.detail.path,
      builder: (context, state) {
        final params = state.extra as DetailViewParams;

        return DetailPage(
          params: params,
        );
      },
    ),
  ],
  errorPageBuilder: (context, state) {
    return const MaterialPage<void>(child: PoppedWidget());
  },

  // redirect to the login page if the user is not logged in
  redirect: (BuildContext context, GoRouterState state) {
    // if the user is not logged in, they need to login
    final loggedIn = context.read<AuthhenticationBloc>().state.loggedIn;
    final bool loggingIn = state.matchedLocation == '/login';
    if (!loggedIn) {
      return '/login';
    }

    // if the user is logged in but still on the login page, send them to
    // the home page
    if (loggingIn) {
      return '/';
    }

    // no need to redirect at all
    return null;
  },

  // changes on the listenable will cause the router to refresh it's route
  // refreshListenable: loginInfo,
);

class PoppedWidget<O> extends StatefulWidget {
  const PoppedWidget({super.key});

  @override
  State<StatefulWidget> createState() => _PoppedState();
}

class _PoppedState extends State<PoppedWidget> {
  @override
  void initState() {
    super.initState();
    context.pop();
  }

  @override
  Widget build(BuildContext context) => const SizedBox();
}
