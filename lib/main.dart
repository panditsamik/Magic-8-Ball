import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade300,
        appBar: AppBar(
          title: Center(child: const Text("Ask Anything")),
          backgroundColor: Colors.blue.shade900,
        ),
        body: const Magic8Ball(),
      ),
    ),
  );
}

class Magic8Ball extends StatefulWidget {
  const Magic8Ball({Key? key}) : super(key: key);

  @override
  State<Magic8Ball> createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  var ballpics = 1;

  //Function to change the decisions
  void Decisions() {
    setState(() {
      ballpics = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                Decisions();
              },
              child: Image(
                image: AssetImage('images/ball$ballpics.png'),
                height: 370,
                width: 370,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
