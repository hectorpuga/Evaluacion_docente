import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/screens/screens.dart';
import 'package:flutter/material.dart';

import '../widgets/login.dart';

class UsuarioScreen extends StatelessWidget {
  static const String name = 'UsuarioScreen';
  const UsuarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        const HeadearPrincipal(),
        Positioned(
            top: size.height * 0.58,
            left: size.width * 0.32,
            child: LoginForm(
              ruta: CuestionarioScreen.name,
              hintText1: 'Usuario',
              color: const Color(0xff14A0FF),
              image: const SizedBox(
                height: 50,
                width: 340,
                child: Image(
                  image: AssetImage('assets/images/BannerUsuario.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ))
      ],
    ));
  }
}
