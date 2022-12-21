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
      body: Column(
        children: [
          SizedBox(
            height: 200,
            width: 200,
            child: Image.network(movie.image),
          ),
          Text(movie.details),
        ],
      ),
    );
  }
}
