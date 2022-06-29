import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:math' as math;

const Color x= Colors.white;
class Box extends StatefulWidget {
 final Color containerColor ;

  const Box({ Key? key , this.containerColor=x}) : super(key: key);
  
  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  Color containerColor = Colors.primaries[math.Random().nextInt(Colors.primaries.length)];
  @override

  @override
  Widget build(BuildContext context) {

    return Container(
       height:140,
        width: 140,
        
      decoration: BoxDecoration(color: containerColor)
      );
  }

  void change(Color xx){
containerColor=xx;
}
}