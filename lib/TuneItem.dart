import 'package:flutter/material.dart';
import 'package:tunes_player_app/TuneModel.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.obj});
  final SoundModule obj;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          obj.playSound();
        },
        child: Container(
          color: obj.color,
        ),
      ),
    );
  }
}
