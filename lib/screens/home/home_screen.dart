import 'package:flutter/material.dart';
import 'package:flutter_go_router/utils/routes/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Home',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                MovieRoute().go(context);
              },
              child: const Text('Movies'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                SongRoute().go(context);
              },
              child: const Text('Songs'),
            ),
          ],
        ),
      ),
    );
  }
}
