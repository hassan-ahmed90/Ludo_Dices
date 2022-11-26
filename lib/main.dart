import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.black54,
        title: Text('Roller Dice'),
        centerTitle: true,
      ),
      body: DiceApp(),
    ),
  ));
}
class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int left =1;
  int right =1;
  void diceChange(){
    setState(() {
       left= Random().nextInt(6)+1;
       right= Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Expanded(child: TextButton(
          onPressed: (){
            setState(() {
            diceChange();
            });
          },
          child: Image(image: AssetImage('images/dice$right.png'),),
        )),
          Expanded(child: TextButton(
            onPressed: (){
              setState(() {
              diceChange();
              });
            },
            child: Image(image:AssetImage('images/dice$left.png')),
          ))
        ],
      ),
    );
  }
}
