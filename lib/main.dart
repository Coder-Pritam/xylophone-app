import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    XylophoneApp(),
  );
}

class XylophoneApp extends StatelessWidget {

  void playsound(int soundNumber)
  {
    final player=AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded BuildKey({required Color btnColor ,required int soundNumber})
  {
    return Expanded(
      child: GestureDetector(
        child: Container(
          color: btnColor,
        ),
        onTap: (){
          playsound(soundNumber);
        }, // onPressed,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Xylophone'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              BuildKey(btnColor : Colors.red, soundNumber: 7),
              BuildKey(btnColor : Colors.orange, soundNumber: 6),
              BuildKey(btnColor : Colors.yellow, soundNumber: 5),
              BuildKey(btnColor : Colors.green, soundNumber: 4),
              BuildKey(btnColor : Colors.blue, soundNumber: 3),
              BuildKey(btnColor : Colors.indigo, soundNumber: 2),
              BuildKey(btnColor : Colors.purple, soundNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}

