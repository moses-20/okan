import 'package:flutter/material.dart';
import 'package:okan/routes/routes.dart';

class ErrorView extends StatelessWidget {
  final String code;
  final String name;
  final String message;

  const ErrorView({
    super.key,
    required this.code,
    required this.name,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Error $code: $message'),
            const TextButton(
              onPressed: RoutePath.home,
              child: Text('Go Home'),
            ),
          ],
        ),
      ),
    );
  }
}
