import 'package:flutter/material.dart';
import 'ui/screens/home_page_temp.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'App Componentes',
      debugShowCheckedModeBanner: false,
      home: HomePageTemp(),
    );
  }
}
