import 'dart:math';

import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DiceApp(),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);


  @override
  _DiceAppState createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  int leftDiceNumber=2;
  int rightDiceNumber=6;
  void changeDiceface(){
    setState(() {
      leftDiceNumber=Random().nextInt(6)+1;
      rightDiceNumber=Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Center(
          child: Column(

            children: [
              Text('Let\'s have a fun try to make all dice to 3', style: TextStyle(fontSize: 20, fontWeight:FontWeight.bold,color: Colors.pink,backgroundColor: Colors.brown ),),
              SizedBox(height: 20,),
              Expanded(
                child: FlatButton(
                  onPressed: (){

                  },
                  child: Image(
                    image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: FlatButton(
                  onPressed: (){
                  },
                  child: Image(
                    image: AssetImage('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Expanded(
                child: FlatButton(
                  onPressed: (){},
                  child: Image(
                    image: AssetImage('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              RaisedButton(
    onPressed: (){
    changeDiceface();
    },
    child: Text('Play Now'),
    color: Colors.cyan,
    textColor: Colors.black,
    elevation: 20,
    ),

            ],

          ),


        ),
      ),

    );

  }
}
