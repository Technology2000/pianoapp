import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    void func(int value){
      final player=AudioCache();
      player.play('note$value.wav');
    }
    Expanded count({Color color,int value}){
      return Expanded(
        child:FlatButton(onPressed:(){
          func(value);
        },
            color:color,
        ),
      );
    }
    return MaterialApp(
      home:Scaffold(
        body:SafeArea(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              count(color:Colors.red,value:1),
               count(color:Colors.black,value:2),
               count(color:Colors.blue,value:3),
               count(color:Colors.pink,value:4),
               count(color:Colors.purple,value:5),
               count(color:Colors.yellow,value:6),
               count(color:Colors.orange,value:7),
            ],
          ),
        ),
      ),
    );
  }
}
