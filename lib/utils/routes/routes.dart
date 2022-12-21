import 'package:flutter/material.dart';
import 'package:flutter_go_router/utils/constants/route_constants.dart';
import 'package:go_router/go_router.dart';

import '../../screens/home/home_screen.dart';
import '../../screens/login/login_screen.dart';
import '../../screens/movies/movie_details_screen.dart';
import '../../screens/movies/movie_screen.dart';
import '../../screens/songs/song_detail_screen.dart';
import '../../screens/songs/song_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeScreenRoute>(
  path: "/${RouteConstants.home}",
  routes: [
    TypedGoRoute<MovieRoute>(
      path: RouteConstants.movie,
      routes: [
        TypedGoRoute<MovieDetailRoute>(
          path: RouteConstants.movieDetails,
        ),
      ],
    ),
    TypedGoRoute<SongRoute>(
      path: RouteConstants.song,
      routes: [
        TypedGoRoute<SongDetailRoute>(
          path: RouteConstants.songDetails,
        ),
      ],
    ),
  ],
)
@TypedGoRoute<LoginRoute>(
  path: "/${RouteConstants.login}",
)

// home route
@immutable
class HomeScreenRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

@immutable
class MovieRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MovieScreen();
  }
}

@immutable
class MovieDetailRoute extends GoRouteData {
  final String id;

  const MovieDetailRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MovieDetailScreen(
      id: id,
    );
  }
}

// song route

@immutable
class SongRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SongScreen();
  }
}

@immutable
class SongDetailRoute extends GoRouteData {
  final String id;

  const SongDetailRoute({required this.id});

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SongDetailScreen(
      id: id,
    );
  }
}

@immutable
class LoginRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}
