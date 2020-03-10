import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Input')
       ),
       body: ListView(
         padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
         children: <Widget>[
           _crearInput(),
         ],
       ),
    );
  }

  Widget _crearInput() {
    return TextField(
      autofocus: true,
    );
  }
}