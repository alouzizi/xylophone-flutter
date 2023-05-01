import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  void playSound(int i) {
    final player = AudioPlayer();
    player.play(AssetSource('note$i.wav'));
  }

  Expanded keys(int i, Color color) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () {
          playSound(i);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                keys(1, Colors.red),
                keys(2, Colors.orange),
                keys(3, Colors.yellow),
                keys(4, Colors.green),
                keys(5, Colors.teal),
                keys(6, Colors.blue),
                keys(7, Colors.purple),
              ]),
        ),
      ),
    );
  }
}
