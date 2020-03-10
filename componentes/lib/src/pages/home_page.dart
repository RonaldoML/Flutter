import 'package:flutter/material.dart';
//Escritos
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    //retorna un widget con los elementos de la ListView cargados por las rutas del json
    return FutureBuilder(
      future: menuProvider.cargaData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        print(snapshot.data);
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );

  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
    data.forEach((f){
      final widgetTemp = ListTile(
        title: Text(f['texto']),
        leading: getIcon(f['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blueGrey),
        onTap: (){
          //Navegación a página específica
          /*final route = MaterialPageRoute(
            builder: (context)=> AlertPage(),
          );
          Navigator.push(context, route);*/
          //Navegación a nueva página con nombre
          Navigator.pushNamed(context, f['ruta']);
        },
      );
      opciones..add(widgetTemp)
      ..add(Divider());
    });
    return opciones;
  }
}