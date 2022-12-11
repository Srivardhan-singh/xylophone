import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';
import 'dart:typed_data';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  void playSound(var sound) {
    final player = AudioPlayer();
    player.play(AssetSource("note$sound.wav"));
  }

  Expanded playButton(Color color, var sound, String text) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playSound(sound);
        },
        child: Text(text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    AudioPlayer player = AudioPlayer();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Button
              playButton(Colors.red, 1, ""),
              playButton(Colors.orange, 2, ""),
              playButton(Colors.yellow, 3, ""),
              playButton(Colors.green, 4, ""),
              playButton(Colors.green.shade800, 5, ""),
              playButton(Colors.blue, 6, ""),
              playButton(Colors.purple, 7, ""),
            ],
          ),
        ),
      ),
    );
  }
}
