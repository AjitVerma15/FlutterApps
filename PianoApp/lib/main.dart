import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void playsound(int soundnumber){
  final player = AudioCache();
  player.play('note$soundnumber.wav');
}

Expanded bulidwidget({Color color,int digit}){
  return   Expanded(
    child: FlatButton(color: color
        , onPressed: (){playsound(digit);}),
  );
}

class XylophoneApp extends StatelessWidget {

  List<Color> rang = [Colors.red,Colors.orange];
  var number = [1,2,3,4,5,6,7];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              bulidwidget(color:rang[0], digit : number[0]),
              bulidwidget(color:Colors.orange, digit : 2),
              bulidwidget(color:Colors.yellow, digit : 3),
              bulidwidget(color:Colors.green, digit : 4),
              bulidwidget(color:Colors.teal, digit : 5),
              bulidwidget(color:Colors.blue, digit : 6),
              bulidwidget(color:Colors.purple, digit : 7)
            ],
          ),
        ),
      ),
    );
  }
}
