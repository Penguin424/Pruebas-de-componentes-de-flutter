import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _Menu 
{

  List<dynamic> opciones = [];
  Map dataMap;

    
  Future<List<dynamic>> cargarData () async
  {

    final data = await rootBundle.loadString('data/menu_opts.json');
    Map dataJson = json.decode(data);

    opciones = dataJson['rutas'];

    return opciones;
  }

}


final menu = new _Menu();