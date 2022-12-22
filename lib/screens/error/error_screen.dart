import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Error Screen'),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                context.goNamed('/');
              },
              child: const Text('Back to Splash Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
