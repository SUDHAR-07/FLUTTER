import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text(
            'Dicee',
            // textAlign: TextAlign.center,
            // textDirection: ,
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.yellowAccent,
        ),
        body: const Dice(),
      ),
    ),
  );
}

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftdiceno = 1, right = 1;
  void getDice() {
    leftdiceno = Random().nextInt(6) + 1;
    right = Random().nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    getDice();
                  });
                },
                child: Image(
                  image: AssetImage("IMAGE/dice$leftdiceno.png"),
                  color: Colors.yellowAccent,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    // if (right > 5) {
                    //   right = 1;
                    // } else {
                    //   right++;
                    // }
                    getDice();
                  });
                },
                child: Image(
                  image: AssetImage("IMAGE/dice$right.png"),
                  // height: 120.0,
                  // width: 200.0,
                  color: Colors.yellowAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
