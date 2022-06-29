import 'dart:convert';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_application_2/box.dart';
void main() {
  runApp(TestPage());
}
class TestPage extends StatefulWidget {
  TestPage({Key? key}) : super(key: key);

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
 
  //List<Box> list=  <Box>[];list.add();
  List<Widget>my= <Widget>[];
  int first=0;
  int second=1;

  Box a=new Box();
 
  @override
  Widget build(BuildContext context) {
    for(int i=0;i<2;i++){
      my.add(new Box() );
    }

 void swap() {  
    if(first==0){
     setState(() {
    first=1;
    second=0;
     });}
     else{
      setState(() {
    first=0;
    second=1;
     });
     }
    // print(first);
   }
  Widget swapWidget;
    if(first==1)
    {    swapWidget=my[0];
      // var x=my[0];
      //     my[0]=my[1];
      //     my[1]=x;
      //     print(first);
    }else{
      swapWidget=my[1];
      //  var x=my[0];
      //     my[0]=my[1];
      //     my[1]=x;
      //      print(first);
    } 
 var swapTile = new ListTile(
      title: swapWidget,
    );
  

    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            //swapTile,
            my[first],my[second]
            
            ],
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: swap,
            child: Icon(Icons.android_outlined),
            tooltip: "Swap",
          ),
      ),
    );
  }
}


