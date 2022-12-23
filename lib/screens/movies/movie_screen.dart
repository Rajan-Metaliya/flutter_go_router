import 'package:flutter/material.dart';
import 'package:flutter_go_router/data/model/movie.dart';
import 'package:go_router/go_router.dart';

import '../../utils/constants/route_constants.dart';

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
            contentPadding: const EdgeInsets.all(16),
            title: Text(movies[index].title),
            leading: SizedBox(
              height: 50,
              width: 50,
              child: Image.network(movies[index].image),
            ),
            onTap: () {
              context.goNamed(RouteConstants.movieDetails,
                  params: {"id": movies[index].id});
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
    details: """
The Jurassic Park franchise is a series of books, films and video games centering on the attempt to create a theme park of cloned dinosaurs. It began in 1990 when Universal Studios bought the rights to the novel by Michael Crichton before it was even published.

The book was very successful, as was the 1993 film adaptation which led to five sequels, although the third, fourth, fifth, and sixth films were not based on a novel, as the previous two films were. The software developers Ocean Software, BlueSky Software and Sega of America have had the rights to developing video games since the 1993 film, and numerous games have been produced.""",
    image:
        "https://upload.wikimedia.org/wikipedia/en/9/93/Jurassic_Park_%28franchise_logo%29.png",
    id: "1",
  ),
  Movie(
    title: "Avatar",
    details:
        """Jake, who is paraplegic, replaces his twin on the Na'vi inhabited Pandora for a corporate mission. After the natives accept him as one of their own, he must decide where his loyalties lie.""",
    image: "https://lumiere-a.akamaihd.net/v1/images/csr_yt_ae2ddc55.jpeg",
    id: "2",
  ),
  Movie(
    title: "John Wick",
    details:
        """John Wick, a retired hitman, is forced to return to his old ways after a group of Russian gangsters steal his car and kill a puppy gifted to him by his late wife.""",
    image:
        "https://upload.wikimedia.org/wikipedia/en/a/a3/JohnWickSoundtrackCover.jpg",
    id: "3",
  ),
];
