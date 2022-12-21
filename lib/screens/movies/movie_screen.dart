import 'package:flutter/material.dart';
import 'package:flutter_go_router/data/model/movie.dart';
import 'package:go_router/go_router.dart';

class MovieScreen extends StatelessWidget {
  const MovieScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie'),
      ),
      // body with movie list

      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(movies[index].title),
            subtitle: Text(movies[index].details),
            leading: Image.network(movies[index].image),
            onTap: () {
              context
                  .goNamed("movie_details", params: {"id": movies[index].id});
            },
          );
        },
      ),
    );
  }
}

List<Movie> movies = [
  Movie(
    title: "Jurasic park",
    details: "CHildren's movie",
    image: "https://picsum.photos/200/300",
    id: "1",
  ),
  Movie(
    title: "Jurasic park 2",
    details: "CHildren's movie",
    image: "https://picsum.photos/200/300",
    id: "2",
  ),
  Movie(
    title: "Jurasic park 3",
    details: "CHildren's movie",
    image: "https://picsum.photos/200/300",
    id: "3",
  ),
];
