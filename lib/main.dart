// import 'dart:html';

import 'package:flutter/material.dart';

// void main() {
//   runApp(const MaterialApp(
//       home: Center(
//     child: Text('HELLO WORLD'),
//   )));
// }

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.amber[100],
      appBar: AppBar(
        title: const Text('I AM RICH'),
        backgroundColor: Colors.black87,
        // toolbarTextStyle: const TextStyle(color: Colors.yellowAccent),
        // titleTextStyle: const HSVColor.fromColor(Colors.black87),
      ),
      body: const Center(
        child: Image(
          image: AssetImage('images/IMG_8954.JPG'),
          // image: NetworkImage('https://pixlr.com/images/index/remove-bg.webp'),
        ),
      ),
    ),
  ));
}
