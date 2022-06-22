import 'package:evaluacion_docente/providers/respuestas.dart';
import 'package:evaluacion_docente/screens/screens.dart';
import 'package:evaluacion_docente/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => RespuestasProvider())],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return MaterialApp(
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.name,
      routes: {
        HomeScreen.name: (_) => const HomeScreen(),
        UsuarioScreen.name: (_) => const UsuarioScreen(),
        AdministradorScreen.name: (_) => const AdministradorScreen(),
        CuestionarioScreen.name: (_) => const CuestionarioScreen()
      },
    );
  }
}
