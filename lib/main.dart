import 'package:componentes/ui/screens/alerts_screen.dart';
import 'package:flutter/material.dart';
import 'ui/screens/home_page_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'App Componentes',
        debugShowCheckedModeBanner: false,
        // home: HomePageTemp(),
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const HomePageTemp(),
          'alert': (BuildContext context) => const AlertsScreen(),
        },
        onGenerateRoute: (RouteSettings setting) {
          print('Ruta llamada: ${setting.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => const AlertsScreen());
        });
  }
}
