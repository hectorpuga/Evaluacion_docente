import 'package:evaluacion_docente/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.name,
      routes: {HomeScreen.name: (_) => const HomeScreen()},
    );
  }
}
