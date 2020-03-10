//Importar un json
import 'package:flutter/services.dart' show rootBundle;
//Serializador de json
import 'dart:convert';

class _MenuProvider{
  List<dynamic> opciones = [];

  _MenuProvider();

  Future<List<dynamic>> cargaData() async {

    final data = await rootBundle.loadString('data/menu_opts.json');
    Map dataMap = json.decode(data);
    opciones = dataMap['rutas'];

    return opciones;
  }
}

final menuProvider = _MenuProvider();