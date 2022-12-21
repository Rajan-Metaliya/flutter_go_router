import 'package:flutter_go_router/screens/home/home_screen.dart';
import 'package:flutter_go_router/screens/movies/movie_screen.dart';
import 'package:flutter_go_router/screens/songs/song_detail_screen.dart';
import 'package:flutter_go_router/screens/songs/song_screen.dart';
import 'package:flutter_go_router/utils/constants/route_constants.dart';
import 'package:go_router/go_router.dart';

import '../../screens/login/login_screen.dart';
import '../../screens/movies/movie_details_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: RouteConstants.home,
        name: RouteConstants.home,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: "movie",
            name: "movie",
            builder: (context, state) => const MovieScreen(),
            routes: [
              GoRoute(
                path: "movie_details/:id",
                name: "movie_details",
                builder: (context, state) => MovieDetailScreen(
                  id: state.params["id"]!,
                ),
              ),
            ],
          ),
          GoRoute(
            path: "song",
            name: "song",
            builder: (context, state) => const SongScreen(),
            routes: [
              GoRoute(
                path: "song_details/:id",
                name: "song_details",
                builder: (context, state) => SongDetailScreen(
                  id: state.params["id"]!,
                ),
              ),
            ],
          ),
        ]),
    GoRoute(
      path: RouteConstants.login,
      name: "/login",
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
