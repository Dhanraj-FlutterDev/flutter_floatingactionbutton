import 'package:animated_floatactionbuttons/animated_floatactionbuttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {

  int index = 0;

  Widget exampleOne(){
    return Container(
      child: FloatingActionButton(
          onPressed: (){
            setState(() {
              index = index + 1;
            });
          },
        focusColor: Colors.yellow,
        focusElevation: 16.0,
        heroTag: 'add',
        elevation: 2.0,
        child: Icon(Icons.add,color: Colors.black,),
      ),
    );
  }

  Widget exampleTwo(){
    return Container(
      child: FloatingActionButton(
          onPressed: (){
            setState(() {
              index = index + 1;
            });
          },
        focusElevation: 16.0,
        focusColor: Colors.yellow,
        heroTag: 'anything',
        elevation: 2.0,
        child: Icon(Icons.text_rotation_angledown,color: Colors.black,),
      ),
    );
  }

  Widget exampleThree(){
    return Container(
      child: FloatingActionButton(
          onPressed: (){
            setState(() {
              index = index + 1;
            });
          },
        focusColor: Colors.yellow,
          focusElevation: 16.0,
        elevation: 2.0,
        heroTag: 'see',
        child: Icon(Icons.search,color: Colors.black,),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Animated Floating Action Button'),
      ),
      body: Center(
        child: Text(index.toString(),style: TextStyle(fontSize: 50.0,color: Colors.white,
        fontWeight: FontWeight.bold),),
      ),
      floatingActionButton: AnimatedFloatingActionButton(
        colorEndAnimation: Colors.red,
        colorStartAnimation: Colors.blue,
        animatedIconData: AnimatedIcons.menu_home,
        fabButtons: <Widget>[
          exampleOne(),
          exampleTwo(),
          exampleThree(),
        ],
      ),
    );
  }
}










