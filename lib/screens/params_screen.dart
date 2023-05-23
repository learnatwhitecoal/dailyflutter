import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScreenWithPath extends StatefulWidget {
  final String? id;
  const ScreenWithPath({super.key, required this.id});

  @override
  State<ScreenWithPath> createState() => _ScreenWithPathState();
}

class _ScreenWithPathState extends State<ScreenWithPath> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Welcome to Room Finder")),
        body: SafeArea(
            child: SizedBox(
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    context.pushNamed("login");
                  },
                  child: const Text("Go to loing page"))
            ],
          ),
        )));
  }
}
