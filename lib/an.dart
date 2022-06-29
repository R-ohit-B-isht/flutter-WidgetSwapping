import 'package:flutter/material.dart';
import 'package:flutter_application_2/box.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(swap: false ,),
    );
  }
}

class MyHomePage extends StatefulWidget {

    
  final bool swap;


  MyHomePage({Key? key,required this.swap}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List<Box>my= <Box>[];
Box a=new Box() ;
Box b=new Box() ;

  bool swap = false;

  @override
  void initState() {
    swap = widget.swap;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var buttonTile = new ListTile(
      title: new RaisedButton(
        child: new Text("Swap Widget"),
          onPressed: (){
            setState((){
              swap = !swap;
            });
          }
      ),
    );



    Box swapWidget;
    if (swap) {
      swapWidget =a;
    } else {
      swapWidget = b;
    }
print(a.key);
    var swapTile = new ListTile(
      title: swapWidget,
    );


    return new Scaffold(
      appBar: new AppBar(
        title: new Text("App Bar Title"),
      ),
      body: new ListView(
          children: <Widget>[
            buttonTile,
            swapTile,
          ],
      ),
    );
  }

}