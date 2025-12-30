import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  void rollLeftDice() {
    setState(() { //so humlog setState use krke build method ko call krnge
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }
    void rollRightDice(){
      setState((){ //so humlog setState use krke build method ko call krnge
        rightDiceNumber = Random().nextInt(6)+1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dice Game',
            style: GoogleFonts.roboto(
                textStyle: TextStyle(color: Colors.black),
                fontWeight: FontWeight.w600,
                fontSize: 35.0
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: (){
                    rollLeftDice();
                  },
                  child: Image.asset('images/Dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: (){rollRightDice();},
                  child: Image.asset('images/Dice$rightDiceNumber.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );;
  }
}


