import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            backgroundColor: Colors.indigoAccent[700],
          ),
          body: BallPage(),
        )),
  );
}

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int image_number = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Center(
          child: FlatButton(
        onPressed: () {
          setState(() {
            image_number = Random().nextInt(5) + 1;
            print('current Image = $image_number');
          });
        },
        child: Image.asset('images/ball$image_number.png'),
      )),
    );
  }
}
