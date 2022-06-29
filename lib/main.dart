import 'package:evaluacion_docente/providers/cambiopantall.dart';
import 'package:evaluacion_docente/providers/crear_usuario.dart';
import 'package:evaluacion_docente/screens/actualizarbuscar.dart';
import 'package:evaluacion_docente/screens/cargar_datos.dart';
import 'package:evaluacion_docente/screens/pantallafinal.dart';
import 'package:evaluacion_docente/services/encuesta.dart';
import 'package:evaluacion_docente/services/generar_excel.dart';
import 'package:evaluacion_docente/services/login_users.dart';
import 'package:evaluacion_docente/providers/respuestas.dart';
import 'package:evaluacion_docente/screens/screens.dart';
import 'package:evaluacion_docente/services/notificactions_service.dart';
import 'package:evaluacion_docente/services/usuario.dart';
import 'package:evaluacion_docente/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RespuestasProvider()),
        ChangeNotifierProvider(
          create: (_) => LoginUser(),
          lazy: true,
        ),
        ChangeNotifierProvider(
          create: (_) => EncuestaProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => UsuarioProvider(),
          lazy: false,
        ),
        ChangeNotifierProvider(
          create: (_) => CambioPantalla(),
        ),
        ChangeNotifierProvider(
          create: (_) => CrearUsuarios(),
        ),
        ChangeNotifierProvider(
          create: (_) => Excel(),
        ),
      ],
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
      scaffoldMessengerKey: NotificationService.messegerKey,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.name,
      routes: {
        HomeScreen.name: (_) => const HomeScreen(),
        UsuarioScreen.name: (_) => const UsuarioScreen(),
        AdministradorLogin.name: (_) => const AdministradorLogin(),
        CuestionarioScreen.name: (_) => CuestionarioScreen(),
        Administrador.name: (_) => const Administrador(),
        ActulizarBuscar.name: (_) => const ActulizarBuscar(),
        CargarDatos.name: (_) => const CargarDatos(),
        FinalScreen.name: (_) => const FinalScreen()
      },
    );
  }
}
