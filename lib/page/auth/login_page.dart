import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../navigation/route.dart';
import 'authentication_bloc.dart';
import 'login_bloc.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Logjn'),
            ElevatedButton(
              onPressed: () => _onTapLogin(context),
              child: const Text('Login'),
            ),
            ElevatedButton(
              onPressed: () => context.pushNamed(
                AppRoute.home.name,
              ),
              child: const Text('Go to Home'),
            ),
          ],
        ),
      ),
    );
  }

  void _onTapLogin(BuildContext context) {
    context.read<AuthhenticationBloc>().login('mymymy');
  }
}
