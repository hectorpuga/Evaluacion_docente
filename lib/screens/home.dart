import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/screens/screens.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'HomeScreen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: Stack(children: [
      const HeadearPrincipal(),
      Positioned(
          right: size.width * 0.41,
          top: size.height * 0.58,
          child: Row(
            children: const [
              OpcionesHome(
                pathImage: 'assets/images/Administrador.png',
                pathRuta: AdministradorLogin.name,
              ),
              OpcionesHome(
                  pathImage: 'assets/images/Usuarios.png',
                  pathRuta: UsuarioScreen.name),
            ],
          ))
    ]));
  }
}
