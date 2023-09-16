import 'package:flutter/material.dart';
import 'package:tunes_player_app/TuneItem.dart';
import 'package:tunes_player_app/TuneModel.dart';

class Tunes extends StatelessWidget {
  const Tunes({super.key});

  final List<SoundModule> sound = const [
    SoundModule(
      color: Colors.red,
      sound: 'note1.wav',
    ),
    SoundModule(
      color: Colors.orange,
      sound: 'note2.wav',
    ),
    SoundModule(
      color: Colors.yellow,
      sound: 'note3.wav',
    ),
    SoundModule(
      color: Colors.green,
      sound: 'note4.wav',
    ),
    SoundModule(
      color: Colors.greenAccent,
      sound: 'note5.wav',
    ),
    SoundModule(
      color: Colors.blue,
      sound: 'note6.wav',
    ),
    SoundModule(
      color: Colors.purple,
      sound: 'note7.wav',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff253238),
        elevation: 1,
        title: const Center(
          child: Text(
            "Tunes Player",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ),
      ),
      body: Column(
        children: sound
            .map(
              (e) => Category(obj: e),
            )
            .toList(),
      ),
    );
  }
}
//for (int i = 0; i < sound.length; i++) Category(obj: sound[i])