import 'package:flutter/material.dart';
import 'package:flutter_go_router/screens/songs/song_screen.dart';

import '../../data/model/song.dart';

class SongDetailScreen extends StatefulWidget {
  const SongDetailScreen({
    super.key,
    required this.id,
  });

  final String id;

  @override
  State<SongDetailScreen> createState() => _SongDetailScreenState();
}

class _SongDetailScreenState extends State<SongDetailScreen> {
  late Song song;

  @override
  void initState() {
    super.initState();

    song = songs.firstWhere((element) => element.id == widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(song.title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.network(song.image),
              const SizedBox(height: 20),
              Text(
                song.title,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(song.artist),
            ],
          ),
        ),
      ),
    );
  }
}
