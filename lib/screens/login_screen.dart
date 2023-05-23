import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Login")),
      body: SafeArea(
          child: SizedBox(
        child: Column(
          children: [
            TextButton(
                onPressed: () {
                  context.goNamed("mainApp");
                },
                child: const Text("Go to home page"))
          ],
        ),
      )),
    );
  }
}
