import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        const HeadearPrincipal(),
        Positioned(
          top: size.height * 0.01,
          child: SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.2,
              child: const Image(
                image: AssetImage('assets/images/LogoSecretaria.png'),
                fit: BoxFit.contain,
              )),
        ),
        Positioned(
          right: size.width * 0.31,
          child: Column(children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'SISTEMA DE EVALUACIÓN DOCENTE',
              style: TextStyle(
                  fontSize: size.width * 0.025,
                  color: const Color(0xffE3BC3A),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'INSTITUTO TECNOLÓGICO SUPERIOR DE EL MANTE',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: size.width * 0.015),
            )
          ]),
        ),
        Positioned(
          top: size.height * 0.01,
          right: size.height * 0.04,
          child: SizedBox(
              height: size.height * 0.1,
              width: size.width * 0.2,
              child: const Image(
                image: AssetImage('assets/images/LogoTec.png'),
                fit: BoxFit.contain,
              )),
        ),
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
                onTap: () => {print('hola como')},
              ),
              SizedBox(
                  width: size.width * 0.15,
                  height: size.height * 0.2,
                  child: const Image(
                    image: AssetImage('assets/images/Usuarios.png'),
                    fit: BoxFit.fill,
                  )),
            ],
          ),
        ),
      ],
    ));
  }
}
