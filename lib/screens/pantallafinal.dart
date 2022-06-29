import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/screens/screens.dart';
import 'package:flutter/material.dart';

class FinalScreen extends StatelessWidget {
  static const String name = 'pantallafinal';
  const FinalScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        HeadearPrincipal(),
        Positioned(
          left: 380,
          top: 230,
          child: Column(
            children: [
              SizedBox(
                height: 300,
                width: 500,
                child:
                    Image(image: AssetImage('assets/images/confirmacion.png')),
              ),
              SizedBox(
                width: 120,
                height: 40,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Color.fromARGB(255, 23, 56, 128)),
                    child: const Text('Salir'),
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, UsuarioScreen.name);
                    }),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
