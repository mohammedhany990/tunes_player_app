import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class SoundModule {
  final String sound;
  final Color color;
  const SoundModule({required this.color, required this.sound});
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}
