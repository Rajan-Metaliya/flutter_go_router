import 'package:flutter/material.dart';

import '../../data/model/movie.dart';
import 'movie_screen.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  late Movie movie;

  @override
  void initState() {
    super.initState();

    movie = movies.firstWhere((element) => element.id == widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: Image.network(movie.image),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),
            Text(movie.details),
          ],
        ),
      ),
    );
  }
}
