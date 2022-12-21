import 'package:flutter/material.dart';
import 'package:flutter_go_router/data/model/song.dart';
import 'package:go_router/go_router.dart';

class SongScreen extends StatelessWidget {
  const SongScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Songs'),
      ),
      // list of songs
      body: ListView.builder(
        itemCount: songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(songs[index].title),
            subtitle: Text(songs[index].artist),
            leading: Image.network(songs[index].image),
            onTap: () {
              context.goNamed("song_details", params: {"id": songs[index].id});
            },
          );
        },
      ),
    );
  }
}

List<Song> songs = [
  Song(
    id: "1",
    title: "Never give up",
    artist: "Artist 1",
    image: "https://picsum.photos/200/300",
  ),
  Song(
    id: "2",
    title: "we are the champions",
    artist: "Artist 2",
    image: "https://picsum.photos/200/300",
  ),
  Song(
    id: "3",
    title: "I will survive",
    artist: "Artist 3",
    image: "https://picsum.photos/200/300",
  ),
];
