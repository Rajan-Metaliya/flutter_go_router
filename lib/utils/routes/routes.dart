import 'package:flutter_go_router/screens/home/home_screen.dart';
import 'package:flutter_go_router/screens/songs/song_detail_screen.dart';
import 'package:flutter_go_router/screens/songs/song_screen.dart';
import 'package:flutter_go_router/utils/constants/route_constants.dart';
import 'package:go_router/go_router.dart';

import '../../screens/login/login_screen.dart';
import '../../screens/movies/movie_details_screen.dart';
import '../../screens/movies/movie_screen.dart';
import '../../screens/splash_screen/splash_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: RouteConstants.splash,
      name: RouteConstants.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
        path: "/${RouteConstants.home}",
        name: "/${RouteConstants.home}",
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: RouteConstants.movie,
            name: RouteConstants.movie,
            builder: (context, state) => const MovieScreen(),
            routes: [
              GoRoute(
                path: "${RouteConstants.movieDetails}/:id",
                name: RouteConstants.movieDetails,
                builder: (context, state) => MovieDetailScreen(
                  id: state.params["id"]!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: RouteConstants.song,
            name: RouteConstants.song,
            builder: (context, state) => const SongScreen(),
            routes: [
              GoRoute(
                path: "${RouteConstants.songDetails}/:id",
                name: RouteConstants.songDetails,
                builder: (context, state) => SongDetailScreen(
                  id: state.params["id"]!,
                ),
              ),
            ],
          ),
        ]),
    GoRoute(
      path: "/${RouteConstants.login}",
      name: "/${RouteConstants.login}",
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
