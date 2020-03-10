import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final stexto = new TextStyle(fontSize: 25, color: Colors.deepPurple);
  final click = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.brown,
      ),
      body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Taps:', 
                    style: stexto,
                    ),
                  Text(click.toString(),
                    style: stexto,
                  ),
                ],
              ),
            ),
      floatingActionButton: FloatingActionButton( 
        onPressed: (){
          print('$click');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}