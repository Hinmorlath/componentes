import 'dart:js';

import 'package:componentes/providers/menu_providers.dart';
import 'package:componentes/ui/screens/alerts_screen.dart';
import 'package:flutter/material.dart';
import 'package:componentes/utils/icons_mapping.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: _lista(),
    );
  }
}

Widget _lista() {
  /*print(menuProvider.opciones);
  return ListView(
    children: _listaItems(),
  );*/
  return FutureBuilder(
    future: menuProvider.loadData(),
    initialData: const [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
      // print('builder: ');
      // print(snapshot.data);
      return ListView(
        children: _listaItems(snapshot.data as List<dynamic>, context),
      );
    },
  );
}

List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
  final List<Widget> opciones = [];
  IconMapping iconMap = const IconMapping();

  data.forEach((opt) {
    final tile = ListTile(
      title: Text(opt['texto']),
      leading: iconMap.getIcon(opt['icon']),
      trailing: const Icon(
        Icons.keyboard_arrow_right,
        color: Colors.blue,
      ),
      subtitle: Text(opt['texto2']),
      onTap: () {
        // final route = MaterialPageRoute(builder: (context) {
        //   return const AlertsScreen();
        Navigator.pushNamed(context, opt['ruta']);
      },
    );
    opciones
      ..add(tile)
      ..add(const Divider());
  });
  return opciones;

  // return const [
  //   ListTile(
  //     title: Text('No sé qué poner'),
  //     subtitle: Text('Confirmo que no sé qué poner'),
  //   ),
  //   Divider(
  //     thickness: 5.0,
  //     color: Colors.deepOrange,
  //   ),
  //   ListTile(
  //     title: Text('Juanito Alcachofa'),
  //     subtitle: Text('Hijo se Germán'),
  //   ),
  //   Divider(
  //     thickness: 5.0,
  //     color: Colors.deepOrange,
  //   ),
  //   ListTile(
  //     title: Text('Pancha La Hacha'),
  //     subtitle: Text('Herramienta de Juanito'),
  //   ),
  //   Divider(
  //     thickness: 5.0,
  //     color: Colors.deepOrange,
  //   ),
  //   ListTile(
  //     title: Text('El increíble juego de tu mamá en tanga'),
  //     subtitle: Text('El juego de Juanito'),
  //   )
  // ];
}
