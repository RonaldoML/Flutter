import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones =['uno', 'dos', 'tres','cuatro','cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp')
        ),
        body: ListView(
          children: _crearItemsShort(),
        ),
    );
  }
  /*List<Widget> _crearItems(){
    List<Widget>  lista = List<Widget>();
    for (String item in opciones) {
      final tempWidget = ListTile(
        title: Text(item),
      );
      lista..add(tempWidget)
          ..add(Divider());
    }
    return lista;
  }*/
  List<Widget> _crearItemsShort(){
    return opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('Cualquier cosa'),
            leading: Icon(Icons.ac_unit),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}