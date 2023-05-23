import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome to Room Finder")),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                context.push("/product/12");
              },
              child: const Text("Go to product page")),
          TextButton(
              onPressed: () {
                context.push("/login");
              },
              child: const Text("Logout"))
        ],
      ),
    );
  }
}
