import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/screens/screens.dart';
import 'package:flutter/material.dart';

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
            children: [
              GestureDetector(
                child: SizedBox(
                    width: size.width * 0.15,
                    height: size.height * 0.2,
                    child: const Image(
                      image: AssetImage('assets/images/Administrador.png'),
                      fit: BoxFit.fill,
                    )),
                onTap: () =>
                    {Navigator.pushNamed(context, AdministradorScreen.name)},
              ),
              GestureDetector(
                  child: SizedBox(
                      width: size.width * 0.15,
                      height: size.height * 0.2,
                      child: const Image(
                        image: AssetImage('assets/images/Usuarios.png'),
                        fit: BoxFit.fill,
                      )),
                  onTap: () =>
                      {Navigator.pushNamed(context, UsuarioScreen.name)}),
            ],
          ))
    ]));
  }
}
