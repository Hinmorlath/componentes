import 'dart:convert';
import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    final respuesta = await rootBundle.loadString('data/menu_opciones.json');
    //print(data);
    Map dataMap = json.decode(respuesta);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

final menuProvider = _MenuProvider();
