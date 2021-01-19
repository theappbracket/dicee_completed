import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomDice = 1;

  int randomDice2 = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    randomizer();
                  });
                },
                child: Image.asset("images/dice$randomDice.png"),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: InkWell(
                onTap: () {
                  setState(() {
                    randomizer();
                  });
                },
                child: Image.asset("images/dice$randomDice2.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  randomizer() {
    randomDice = Random().nextInt(6) + 1;
    randomDice2 = Random().nextInt(6) + 1;
  }
}
