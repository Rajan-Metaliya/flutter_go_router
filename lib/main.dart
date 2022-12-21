import 'package:flutter/material.dart';
import 'package:flutter_go_router/screens/home/home_screen.dart';
import 'package:flutter_go_router/screens/songs/song_detail_screen.dart';
import 'package:flutter_go_router/screens/songs/song_screen.dart';
import 'package:flutter_go_router/screens/splash_screen/splash_screen.dart';
import 'package:flutter_go_router/utils/constants/route_constants.dart';
import 'package:go_router/go_router.dart';

import 'screens/login/login_screen.dart';
import 'screens/movies/movie_details_screen.dart';
import 'screens/movies/movie_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Go Router Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerConfig: router,
    );
  }
}

final router = GoRouter(
  initialLocation: RouteConstants.splash,
  routes: [
    GoRoute(
      path: RouteConstants.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/${RouteConstants.home}",
      builder: (context, state) => const HomeScreen(),
      routes: [
        GoRoute(
          path: RouteConstants.movie,
          builder: (context, state) => const MovieScreen(),
          routes: [
            GoRoute(
              path: RouteConstants.movieDetails,
              builder: (context, state) => MovieDetailScreen(
                id: state.params["id"]!,
              ),
            ),
          ],
        ),
        GoRoute(
          path: RouteConstants.song,
          builder: (context, state) => const SongScreen(),
          routes: [
            GoRoute(
              path: RouteConstants.songDetails,
              builder: (context, state) => SongDetailScreen(
                id: state.params["id"]!,
              ),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: "/${RouteConstants.login}",
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
