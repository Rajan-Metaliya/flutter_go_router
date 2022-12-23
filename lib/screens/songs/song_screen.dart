import 'package:flutter/material.dart';
import 'package:flutter_go_router/data/model/song.dart';
import 'package:flutter_go_router/utils/constants/route_constants.dart';
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
      body: Column(
        children: [
          MaterialButton(
            onPressed: () {
              context.pop();
            },
            child: const Text("Back to Home"),
          ),
          Flexible(
            child: ListView.builder(
              itemCount: songs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  subtitle: Text(songs[index].artist),
                  leading: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.network(songs[index].image)),
                  onTap: () {
                    context.goNamed(
                      RouteConstants.songDetails,
                      params: {"id": songs[index].id},
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

List<Song> songs = [
  Song(
    id: "1",
    title: "We Will Rock You",
    artist: "Queen",
    image:
        "https://upload.wikimedia.org/wikipedia/en/1/18/We_Will_Rock_You_by_Queen_%281977_French_single%29.png",
  ),
  Song(
    id: "2",
    title: "The Champion",
    artist: "Carrie Underwood",
    image:
        "https://upload.wikimedia.org/wikipedia/en/f/f0/Carrie_Underwood_%26_Ludacris_-_Champion.jpg",
  ),
  Song(
    id: "3",
    title: "Birthday",
    artist: "Katy Perry",
    image:
        "https://upload.wikimedia.org/wikipedia/en/1/11/Katy_Perry_-_Birthday_Single_Cover.png",
  ),
];
