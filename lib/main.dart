import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  _buildAudio(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Expanded buildkey({Color color, int number}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          _buildAudio(number);
        },
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildkey(color: Colors.black, number: 1),
              buildkey(color: Colors.white, number: 2),
              buildkey(color: Colors.black, number: 3),
              buildkey(color: Colors.white, number: 4),
              buildkey(color: Colors.black, number: 5),
              buildkey(color: Colors.white, number: 6),
              buildkey(color: Colors.black, number: 7),
            ],
          ),
        ),
      ),
    );
  }
}
