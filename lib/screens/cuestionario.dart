import 'package:evaluacion_docente/headears/headers_screen.dart';
import 'package:evaluacion_docente/widgets/encabezado.dart';
import 'package:evaluacion_docente/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CuestionarioScreen extends StatelessWidget {
  static String name = 'CuestionarioScreen';
  const CuestionarioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        const HeadearPrincipal(),
        const Positioned(top: 100, left: 320, child: Encabezado()),
        Positioned(
          left: 200,
          top: 340,
          child: Row(
            children: const [
              BaseCuestionario(
                textoPrincipal: "Materia",
                textos: [
                  "Ingles V",
                  "Ingles VI",
                  "Redes de computadoras",
                  "Administración de base de datos",
                  "Graficación",
                  "Ingenieria de software",
                  "Lenguajes de interfaz",
                  "Lenguajes y autómatas",
                ],
              ),
              BaseCuestionario(
                textoPrincipal: "Maestros",
                textos: [
                  "Indira Valdez Vazquez",
                  "Indira Valdez Vazquez",
                  "Rosa Ernestina Pelayo Marquez",
                  "Perla Coral Villegas Almazan",
                  "Christian Muñoz Meza",
                  "Verónica Sobrevilla Pintor",
                  "Jose Pualino Ramirez Juarez",
                  "LVerónica Sobrevilla Pintor",
                ],
              ),
            ],
          ),
        ),
        const Positioned(top: 300, right: 250, child: Opciones()),
        Positioned(
            top: 650,
            left: 600,
            child: SizedBox(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xff14A0FF),
                ),
                child: const Text('Iniciar sesión'),
                onPressed: () {},
              ),
            ))
      ],
    ));
  }
}
