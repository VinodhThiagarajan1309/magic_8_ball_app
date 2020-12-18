import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("Ask Me Anything"),
        backgroundColor: Colors.blue[900],
      ),
      body: MagicEightBall(),
    ),
  ));
}

/*
Stateful object that will be displaying the image
 */
class MagicEightBall extends StatefulWidget {
  @override
  _MagicEightBallState createState() => _MagicEightBallState();
}

class _MagicEightBallState extends State<MagicEightBall> {
  int seekNewBallNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              seekNewBallNumber = Random().nextInt(5) + 1;
            });
          },
          child: Image.asset("images/ball$seekNewBallNumber.png"),
        ),
      ),
    );
  }
}
