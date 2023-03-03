import 'package:flutter/material.dart';
import 'package:okan/routes/routes.dart';

class PostView extends StatelessWidget {
  final String post;
  const PostView({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts Detail'),
      ),
      body: Center(
        child: TextButton(
          onPressed: _goHome,
          child: const Text('Go Home'),
        ),
      ),
    );
  }

  void _goHome() {
    RoutePath.home();
  }
}
