// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<GoRoute> get $appRoutes => [
      $homeScreenRoute,
    ];

GoRoute get $homeScreenRoute => GoRouteData.$route(
      path: '/home',
      factory: $HomeScreenRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'movie',
          factory: $MovieRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'movie_details/:id',
              factory: $MovieDetailRouteExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'song',
          factory: $SongRouteExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'song_details/:id',
              factory: $SongDetailRouteExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $HomeScreenRouteExtension on HomeScreenRoute {
  static HomeScreenRoute _fromState(GoRouterState state) => HomeScreenRoute();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $MovieRouteExtension on MovieRoute {
  static MovieRoute _fromState(GoRouterState state) => MovieRoute();

  String get location => GoRouteData.$location(
        '/home/movie',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $MovieDetailRouteExtension on MovieDetailRoute {
  static MovieDetailRoute _fromState(GoRouterState state) => MovieDetailRoute(
        id: state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/home/movie/movie_details/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SongRouteExtension on SongRoute {
  static SongRoute _fromState(GoRouterState state) => SongRoute();

  String get location => GoRouteData.$location(
        '/home/song',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}

extension $SongDetailRouteExtension on SongDetailRoute {
  static SongDetailRoute _fromState(GoRouterState state) => SongDetailRoute(
        id: state.params['id']!,
      );

  String get location => GoRouteData.$location(
        '/home/song/song_details/${Uri.encodeComponent(id)}',
      );

  void go(BuildContext context) => context.go(location, extra: this);

  void push(BuildContext context) => context.push(location, extra: this);
}
