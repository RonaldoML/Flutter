
import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color,
          ), 
          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: _cambiarForma,
      ),
    );
  }
  void _cambiarForma(){
    final rand = Random();
    setState(() {
      _width = rand.nextInt(300).toDouble();
      _heigth = rand.nextInt(300).toDouble();
      _color = Color.fromRGBO(rand.nextInt(255), rand.nextInt(255), rand.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(rand.nextInt(100).toDouble());
    });
  }
}