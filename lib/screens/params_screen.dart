import 'package:flutter/material.dart';

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
      body: Text("Screen with state ${widget.id}"),
    );
  }
}
