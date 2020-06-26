import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playNote(int a) {
    final player = AudioCache();
    player.play('note$a.wav');
  }

  Expanded buildNote(int a, Color color) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playNote(a);
        },
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
            children: <Widget>[
              buildNote(1, Colors.red),
              buildNote(2, Colors.orange),
              buildNote(3, Colors.yellow),
              buildNote(4, Colors.green),
              buildNote(5, Colors.teal),
              buildNote(6, Colors.blue),
              buildNote(7, Colors.purple),
            ],
          ),
        ),
      ),
    );
  }
}
