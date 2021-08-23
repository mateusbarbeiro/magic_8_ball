import 'dart:math';

import 'package:flutter/material.dart';

void main() {
    runApp(
        MaterialApp(
            home: Scaffold(
                backgroundColor: Colors.green[300],
                body: const MagicBall(),
                appBar: AppBar(
                    title: const Text('Pergunte-me alguma coisa!'),
                    backgroundColor: Colors.green[900],
                ),
            ),
        ),
    );
}

class MagicBall extends StatefulWidget {
    const MagicBall({Key? key}) : super(key: key);

    @override
    _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
    int imageNumber = 1;

    @override
    Widget build(BuildContext context) {
        return Center(
            child: TextButton(
                onPressed: () {
					setState(() {
						imageNumber = Random().nextInt(5) + 1;
					});
                },
                child: Image.asset('images/ball$imageNumber.png'),
            ),
        );
    }
}
