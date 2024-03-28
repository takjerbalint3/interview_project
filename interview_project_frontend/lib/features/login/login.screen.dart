import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:interview_project_frontend/core/router/router.dart';
import 'package:interview_project_frontend/features/login/models/login.dto.model.dart';
import 'package:interview_project_frontend/features/login/provider/login.provider.dart';

@RoutePage()
class LoginScreen extends HookConsumerWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(loginProvider, (previous, next) {
      if (previous != null && next.value != null) {
        context.router.push(const HomeRoute());
      }
    });

    final usernameController = useTextEditingController();
    final passwordController = useTextEditingController();

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 48, 24, 48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _LoginTitle(),
              _LoginForm(usernameController: usernameController, passwordController: passwordController),
              _LoginButton(usernameController: usernameController, passwordController: passwordController),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginTitle extends StatelessWidget {
  const _LoginTitle();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Text.rich(
          TextSpan(
            text: 'dummy',
            style: TextStyle(fontWeight: FontWeight.w400, fontSize: 48),
            children: <InlineSpan>[
              TextSpan(
                text: 'Social',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 48),
              )
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _LoginForm extends HookWidget {
  const _LoginForm({required this.usernameController, required this.passwordController});
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const Text("Login"),
          TextFormField(
            controller: usernameController,
            decoration: const InputDecoration(hintText: "Username", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
          TextFormField(
            controller: passwordController,
            decoration: const InputDecoration(hintText: "Password", border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
          ),
        ],
      ),
    );
  }
}

class _LoginButton extends HookConsumerWidget {
  const _LoginButton({required this.usernameController, required this.passwordController});
  final TextEditingController usernameController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FilledButton(
      onPressed: () {
        ref.read(loginProvider.notifier).login(loginDto: LoginDto(username: usernameController.text, password: passwordController.text));
      },
      child: const Text("Login"),
    );
  }
}
