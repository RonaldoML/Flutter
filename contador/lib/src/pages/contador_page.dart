import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
  @override
  createState() => _ContadorPageState();
  
}
class _ContadorPageState extends State<ContadorPage>{
  final _stexto = new TextStyle(fontSize: 25, color: Colors.deepPurple);
  int _click = 0;
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
                    style: _stexto,
                    ),
                  Text('$_click',
                    style: _stexto,
                  ),
                ],
              ),
            ),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: _crearBotones(_click),
    );
  }

  Widget _crearBotones(n){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children:<Widget>[
        Expanded(child: SizedBox(),),        
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _sustraer, backgroundColor: Colors.deepPurple,),
        Expanded(child:SizedBox(width: 5.0)),
        FloatingActionButton(child: Icon(Icons.refresh), onPressed: _reset, backgroundColor: Colors.brown,),
        Expanded(child:SizedBox()),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar, backgroundColor: Colors.deepPurple,),
        Expanded(child: SizedBox(),), 
      ]
    );
  }
  void _agregar(){    
    setState(()=> _click++);
  }
  void _sustraer(){    
    setState(()=> _click--);
  }
  void _reset(){    
    setState(()=> _click=0);
  }
}