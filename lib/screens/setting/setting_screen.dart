import 'package:flutter/material.dart';
import 'package:flutter_go_router/data/model/user.dart';
import 'package:go_router/go_router.dart';

import '../../utils/constants/route_constants.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({
    super.key,
    required this.name,
    required this.query,
    required this.user,
  });

  final String name;

  final String query;

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting $name'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Extra data: $user',
              style: const TextStyle(fontSize: 24),
            ),
            Text(
              'Query parameter: $query',
              style: const TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                context.goNamed(RouteConstants.home);
              },
              child: const Text('Back to Home'),
            ),
          ],
        ),
      ),
    );
  }
}
