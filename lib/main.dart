import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int music) {
    AssetsAudioPlayer.newPlayer().open(
      Audio("assets/note$music.wav"),
      autoStart: true,
      showNotification: true,
    );
  }

  Expanded buttonUi({required Color color, required int music}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(music);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
        ),
        child: const Text("tap listen"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red.shade400,
          title: const Text("Music"),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buttonUi(color: Colors.red, music: 1),
              buttonUi(color: Colors.orange, music: 2),
              buttonUi(color: Colors.yellow, music: 3),
              buttonUi(color: Colors.green, music: 4),
              buttonUi(color: Colors.teal, music: 5),
              buttonUi(color: Colors.blue, music: 6),
              buttonUi(color: Colors.purple, music: 7),
            ],
          ),
        ),
      ),
    );
  }
}
