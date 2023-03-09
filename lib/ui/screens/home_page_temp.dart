import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  const HomePageTemp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('No sé qué poner'),
            subtitle: Text('Confirmo que no sé qué poner'),
          ),
          Divider(
            thickness: 5.0,
            color: Colors.deepOrange,
          ),
          ListTile(
            title: Text('Juanito Alcachofa'),
            subtitle: Text('Hijo se Germán'),
          ),
          Divider(
            thickness: 5.0,
            color: Colors.deepOrange,
          ),
          ListTile(
            title: Text('Pancha La Hacha'),
            subtitle: Text('Herramienta de Juanito'),
          ),
          Divider(
            thickness: 5.0,
            color: Colors.deepOrange,
          ),
          ListTile(
            title: Text('El increíble juego de tu mamá en tanga'),
            subtitle: Text('El juego de Juanito'),
          )
        ],
      ),
    );
  }
}
