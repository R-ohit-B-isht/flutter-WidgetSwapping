import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_application_2/box.dart';

void main() {
  runApp(TestPage());
}

class TestPage extends StatelessWidget {
Color _containerColor = Colors.primaries[math.Random().nextInt(Colors.primaries.length)];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(decoration: BoxDecoration(color: _containerColor),
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  double address1Top = 50;
  double address2Top = 110;
  bool isFirstUp = true;
  bool isSecondUp = false;

  @override
  Widget build(BuildContext context) {
    Box a=new Box();
    Box b=new Box();
    return Container(

      color: Colors.blue,
      child: Stack(
        children: <Widget>[
     
          Positioned(
            top: isFirstUp ? address1Top : address2Top,
            left: 20,
            child: GestureDetector(
              onTap: () {
                print('tapped');
                if (isFirstUp) {
                  setState(() {
                    isFirstUp = false;
                    isSecondUp = true;
                  });
                }

                if ( isSecondUp) {
                  setState(() {
                    isFirstUp = true;
                    isSecondUp = false;
                  });
                }
              },
              child: Container(
                width: 140,
                child: Center(
                  child: Text("A"),
                ),
                color: Colors.red,
              ),
            ),
          ),
          // Bottom address
          Positioned(
            top: isSecondUp ? address1Top : address2Top,
            left: 20,
            child: GestureDetector(
              onVerticalDragUpdate: (details) {
               if (details.delta.dy < -1 && isFirstUp) {
                  setState(() {
                    isFirstUp = false;
                    isSecondUp = true;
                  });
                }

                if (details.delta.dy > 1 && isSecondUp) {
                  setState(() {
                    isFirstUp = true;
                    isSecondUp = false;
                  });
                }
              },
              child: Container(
                width: 140,
                child: Center(
                  child: Text("B"),
                ),
                color: Colors.green,
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
