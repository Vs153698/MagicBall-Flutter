import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal[200],
        appBar: AppBar(
          title: Center(
              child: Text(
            "Ask Me",
            style: TextStyle(fontSize: 30.0),
          )),
          backgroundColor: Colors.teal[800],
        ),
        body: Magicball(),
      ),
    ),
  );
}

class Magicball extends StatefulWidget {
  const Magicball({Key? key}) : super(key: key);

  @override
  _MagicballState createState() => _MagicballState();
}

class _MagicballState extends State<Magicball> {
  @override
  var btn = 1;
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            setState(() {
              btn = 1 + Random().nextInt(5);
            });
          },
          child: Image.asset('images/ball$btn.png'),
        ),
      ],
    );
  }
}
