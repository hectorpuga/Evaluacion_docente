import 'package:evaluacion_docente/screens/actualizarbuscar.dart';
import 'package:evaluacion_docente/screens/cargar_datos.dart';
import 'package:evaluacion_docente/screens/home.dart';
import 'package:flutter/material.dart';

import '../headears/headers_screen.dart';

class Administrador extends StatelessWidget {
  static const String name = 'admin';
  const Administrador({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const HeadearPrincipal(),
          Center(
            child: Container(
              width: 600,
              height: 400,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: _adornnoCuadrado("Cargar"),
                    onTap: () {
                      Navigator.pushNamed(context, CargarDatos.name);
                    },
                  ),
                  GestureDetector(
                    child: _adornnoCuadrado("Resultados"),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: _adornnoCuadrado("Actualizar"),
                    onTap: () {
                      Navigator.pushNamed(context, ActulizarBuscar.name);
                    },
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 600,
              left: 200,
              child: SizedBox(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 177, 165, 0),
                  ),
                  child: const Text('Cerrar sesión'),
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, HomeScreen.name);
                  },
                ),
              ))
        ],
      ),
    );
  }
}

_adornnoCuadrado(String image) {
  return Container(
      height: 150,
      width: 140,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Image(
        image: AssetImage('assets/images/$image.png'),
        fit: BoxFit.fill,
      ));
}
